<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Str;
use Validator;
use App\Traits\GeneralTrait;
class AuthenticatedSessionController extends Controller
{
        use GeneralTrait; 

    /**
     * Display the login view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     *
     * @param  \App\Http\Requests\Auth\LoginRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LoginRequest $request)
    {
        $request->authenticate();

        $request->session()->regenerate();

        return redirect()->intended(RouteServiceProvider::HOME);
    }

    
    public function apiStore(LoginRequest $request)
    {
        if (!Auth::attempt($request->only('email', 'password'))) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect']
            ]);
        }

        $user = User::where('email', $request->email)->first();
        return response($user);
    }
    public function apiLogin(LoginRequest $request)
    {
        try {
            $rules = [
                "email" => "required",
                "password" => "required",
                // "device_token" => "required"
            ];
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                $code = $this->returnCodeAccordingToInput($validator);
                return $this->returnValidationError($code, $validator);
            }
            $credentials = $request->only(['email','password']);
            $token =  Auth::guard('user-api') -> attempt($credentials);
            if(!$token)
                return $this -> returnError('Incorrect email or password');
            
            $UserData = User::where("email" , $request->email)->first();
            // $UserData->device_token=$request->device_token;
            // dd($token);
            $UserData->api_token=$token;
            $UserData->save();                    
            $buyer = User::where('id',$UserData->id)->first();             
            // $buyer->photo= "http://findfamily.net/care/img/profiles/".$buyer->photo;
            return $this -> returnDataa('data',$buyer,'Logged in successfully');  
        }catch (\Exception $ex){
            return $this->returnError( $ex->getMessage());
        }
    }

    public function UserProfileUpdate(Request $request)
    {
        // dd('sduygcsd');
        // exit();
        $user = Auth::guard('user-api')->user();
        if(!$user)
            return $this->returnError('You must login first ');
        $edit = User::findOrFail($user->id);
        // dd('ddd');
        if($file=$request->file('photo'))
         {
            $file_extension = $request -> file('photo')->getClientOriginalExtension();
            $file_name = time().'.'.$file_extension;
            $file_nameone = $file_name;
            $path = 'img/profiles';
            $request-> file('photo') ->move($path,$file_name);
            $edit->photo  = $file_nameone;
        }else{
            $edit->photo  = $edit->photo; 
        }

        if(isset($request->first_name)){
            $edit->first_name  = $request->first_name; 
        }else{
            $edit->first_name  = $edit->first_name; 
        } 

        if(isset($request->last_name)){
            $edit->last_name  = $request->last_name;  
        }else{
            $edit->last_name  = $edit->last_name; 
        } 
        
        $edit-> save();
            
        $user = User::find($edit->id);
        $user->photo= "http://127.0.0.1:8000/img/profiles/".$user->photo;
        return $this -> returnDataa('data',$user,'updated successfully');
          
    }
    /**
     * Verifies user token.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function apiVerifyToken(Request $request)
    {
        $request->validate([
            'api_token' => 'required'
        ]);

        $user = User::where('api_token', $request->api_token)->first();

        if(!$user){
            throw ValidationException::withMessages([
                'token' => ['Invalid token']
            ]);
        }
        return response($user);
    }

    /**
     * Destroy an authenticated session.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}

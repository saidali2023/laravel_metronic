<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Validation\ValidationException;

use App\Traits\GeneralTrait;
use Auth;
use Validator;
use Hash;
use Illuminate\Support\Str;
use DateTime;
use Carbon\Carbon;
use Mail;
use DB;

class PasswordResetLinkController extends Controller
{
        use GeneralTrait; 

    /**
     * Display the password reset link request view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.forgot-password');
    }

    /**
     * Handle an incoming password reset link request.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        // We will send the password reset link to this user. Once we have attempted
        // to send the link, we will examine the response then see the message we
        // need to show to the user. Finally, we'll send out a proper response.
        $status = Password::sendResetLink(
            $request->only('email')
        );

        return $status == Password::RESET_LINK_SENT
            ? back()->with('status', __($status))
            : back()->withInput($request->only('email'))
                ->withErrors(['email' => __($status)]);
    }

    /**
     * Handle an incoming api password reset link request.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function apiStore(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $user = User::where('email', $request->email)->first();

        if(!$user){
            throw ValidationException::withMessages([
                'email' => ['User with such email doesn\'t exist']
            ]);
        }

        return response('Password reset email successfully sent.');
    }
     public function forgetPassword(Request $request)
    {
        
        $input = $request->all();
        $rules = array(
            'email' => 'required|email|exists:users',
        );
        $validator = Validator::make($input, $rules);
        
        if ($validator->fails()) {
            return $this->returnError($validator->errors()->first());
        } else {
            try {
                $user= User::where('email',$request->email)->first();
                if($user==null){
                    return $this -> returnError('Email not found');
                }else{       
                          
                    $token = Str::random(64);
                    DB::table('password_resets')->insert([
                          'email' => $request->email, 
                          'token' => $token, 
                          'created_at' => Carbon::now()
                    ]);
                    // dd($token);
                    Mail::send('emails.forgetpassword', ['token' => $token], function($message) use($request){
                          $message->to($request->email);
                          $message->subject('Reset Password');
                    });   
                    $details = [
                        'title' => 'Mail from hamada ali',
                        'body' => 'This is for testing email using smtp',
                        'token' => $token, 
                    ];
                    
                    // \Mail::to($request->email)->send(new \App\Mail\MyTestMail($details));
                   

                    return $this -> returnSuccessMessage('Please visit your email');
                }
            } catch (\Swift_TransportException $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            } catch (Exception $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            }
        }
        // return \Response::json('doneeeee');
    }
    public function resetUserPasswordGet($token) { 

         return view('auth.reset-password-link', ['token' => $token]);
    }

    public function resetUserPasswordPost(Request $request)
    {
            // dd($request->token);
          $request->validate([
              // 'email' => 'required|email|exists:users',
              'password' => 'required|min:2',
              'confirm_password' => 'required'
          ]);

        // $validatedData = $request->validate([
        //         'password' => 'required|min:2',
        //       'confirm_password' => 'required'
        //     ], [
                
        //         'password.required' => 'Email field is required.',
        //         'confirm_password.email' => 'Email field must be email address.'
        //     ]);
    
          // dd($request->token);
          // exit();
          $updatePassword = DB::table('password_resets')->where([
                                'token' => $request->token
                              ])->first();
          
          if(!$updatePassword){
              return back()->withInput()->with('error', 'Invalid token!');
          }
          // dd('sdcsdicgds');
          $user = User::where('email', $updatePassword->email)->first();
          $user->password  = bcrypt($request->password); 
          $user-> save();
          // dd($user);
          DB::table('password_resets')->where(['email'=> $updatePassword->email])->delete();

        // return $this -> returnSuccessMessage('your password has been changed!');
           return back()->with('message', 'Your password has been changed! ');
         
    }
    public function changePassword(Request $request)
    {

        $user = Auth::guard('user-api')->user();
         if(!$user)
            return $this->returnError('You must login first');
        // dd('cha');
        $input = $request->all();
        $userid = User::where("id" , $user->id)->first();
        
        $rules = array(
            'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required|same:new_password',
        );
        $validator = Validator::make($input, $rules);
        if ($validator->fails()) {
            return $this->returnError($validator->errors()->first());
        } else {
            try {
                if ((Hash::check(request('old_password'), $userid->password)) == false) {
                        return $this->returnError('Check your old password.');
                }else if ((Hash::check(request('new_password'), $request->password)) == true) {
                       return $this->returnError('lease enter a password which is not similar then current password.');
                }else {                     
                     $userid->password  = bcrypt($input['new_password']);
                     $userid->save();
                     return $this -> returnDataa('data',$userid,'Password updated successfully.');  
                }
            } catch (\Exception $ex) {
                if (isset($ex->errorInfo[2])) {
                    $msg = $ex->errorInfo[2];
                } else {
                    $msg = $ex->getMessage();
                }
                return $this->returnError($msg);
                // $arr = array("status" => 400, "message" => $msg, "data" => array());
            }
        }
        // return \Response::json($arr);
    }
}

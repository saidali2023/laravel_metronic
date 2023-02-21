<?php
  
namespace App\Http\Controllers;
  use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
  
class ImageUploadController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function imageUpload()
    {
        dd('utuyg');
        return view('imageUpload');
    }
    
    
    public function imageUploadPost(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
    
        $imageName = time().'.'.$request->image->extension();  
     
        $path = Storage::disk('s3')->put('images', $request->image);
        $path = Storage::disk('s3')->url($path);
  
        /* Store $imageName name in DATABASE from HERE */
    
        return back()
            ->with('success','You have successfully upload image.')
            ->with('image', $path); 
    }
}
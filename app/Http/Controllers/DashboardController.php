<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request as Psr7Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Category;
use App\Models\User;
use App\Models\Feedback;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $categories = Category::get();
        $feedbacks = Feedback::with('user', 'category')->paginate(10);


        return view('dashboard', get_defined_vars());
    }

    public function profile()
    {
        $user = Auth::user();
        return view('profile.userprofile', get_defined_vars());
    }
    public function general(Request $req)
    {
        $user = Auth::user();
        $req->validate([
            'fname' => 'required',
            'lname' => 'required',
        ]);

        $user->first_name = $req->fname;
        $user->last_name = $req->lname;

        if ($req->image) {
            $user->image = uploadFile($req->image, 'uploads/profile', $req->first_name . '-' . $req->last_name . '-' . time());
        }

        $user->save();
        return redirect()->back()->with('success', 'Profile updated successfully');
    }

    public function changePassword(Request $req)
    {
        $user = Auth::user();

        $check = Validator::make($req->all(), [
            'current_password' => 'required|password',
            'password' => 'required|min:8',
            'confirm_password' => 'required|same:password'
        ]);

        if ($check->fails()) {
            return redirect()->back()->with('error', $check->errors()->first());
        }

        $user->password = bcrypt($req->password);
        $user->save();

        return redirect()->back()->with('success', 'Password updated Successfully!');
    }

    public function changeEmail(Request $request)
    {
        $check =  Validator::make($request->all(), [
            'email' => 'required|email|unique:users,email,' . Auth::id(),
            'password' => 'required|password'
        ]);
        if ($check->fails()) {
            return redirect()->back()->with('error', $check->errors()->first());
        }

        $user = Auth::user();
        $user->email = $request->email;
        $user->save();

        return redirect()->back()->with('success', 'Email updated Successfully!');
    }

}

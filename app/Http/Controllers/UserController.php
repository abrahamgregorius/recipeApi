<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'username' => 'required|unique:users,username',
            'password' => 'required|min:6|confirmed'
        ]);

        if($validator->fails()) return response()->json([
            'message' => 'Invalid field',
            'errors' => $validator->errors()
        ], 422);

        $token = uuid_create();

        $user = User::create([
            'username' => $request->username,
            'password' => $request->password,
            'role' => 'User',
            'token' => $token
        ]);

        Auth::login($user);

        return response()->json([
            'message' => 'Register success',
            'accessToken' => $token
        ]);
    }

    public function login(Request $request) {
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required'
        ]);

        $auth = Auth::attempt(['username' => $request->username, 'password' => $request->password]);

        if(!$auth) {
            return response()->json([
                'message' => 'Username or password incorrect'
            ], 401);
        }

        $token = uuid_create();
        $user = User::find(auth()->user()->id);

        $user->update([
            'token' => $token
        ]);

        return response()->json([
            'message' => 'Login success',
            'role' => $user->role,
            'accessToken' => $token
        ]);

    }


    public function logout(Request $request) {
        $user = User::find(auth()->user()->id);

        $user->update([
            'token' => null
        ]);

        return response()->json([
            'message' => 'Logout success'
        ]);

    }

    public function profile() {
        $user = User::find(auth()->user()->id);

        return response()->json([
            'id' => $user->id,
            'username' => $user->username,
            'role' => $user->role,
            'recipe' => $user->recipes->map(function($recipe) {
                return [
                    'id' => $recipe->id,
                    'title' => $recipe->title,
                    'slug' => $recipe->slug,
                    'ingredients' => $recipe->ingredients,
                    'method' => $recipe->method,
                    'tips' => $recipe->tips,
                    'energy' => $recipe->energy . " kcal",
                    'carbohydrate' => $recipe->carbohydrate . "g",
                    'protein' => $recipe->protein . "g",
                    'thumbnail' => asset($recipe->thumbnail),
                    'created_at' => $recipe->created_at,
                    'author' => $recipe->user->username,
                    'ratings_avg' => (float) $recipe->ratings()->avg('rating'),
                    'category' => $recipe->category
                ];
            }),
        ]);
    }

}

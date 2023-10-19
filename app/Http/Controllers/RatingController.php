<?php

namespace App\Http\Controllers;

use App\Models\Rating;
use App\Models\Recipe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RatingController extends Controller
{
    public function store(Request $request, string $slug) {
        $recipe = Recipe::where('slug', $slug)->first();

        $validator = Validator::make($request->all(), [
            'rating' => 'required|between:1,5',
        ]);

        if($validator->fails()) return response()->json([
            'message' => 'Invalid field',
            'errors' => $validator->errors()
        ], 422);

        if($recipe->user_id == auth()->user()->id) {
            return response()->json([    
                'message' => 'You cannot rate your own recipe'
            ], 403);
        }

        if(Rating::where('user_id', auth()->user()->id)->where('recipe_id', $recipe->id)->first()) {
            return response()->json([
                'message' => 'You have rated'
            ], 403);
        }

        Rating::create([
            'rating' => $request->rating,
            'user_id' => auth()->user()->id,
            'recipe_id' => $recipe->id
        ]);

        return response()->json([
            'message' => 'Rating success'
        ]);
    }
}


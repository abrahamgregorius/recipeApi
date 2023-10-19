<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Recipe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{
    public function store(Request $request, string $slug) {
        $recipe = Recipe::where('slug', $slug)->first();

        $validator = Validator::make($request->all(), [
            'comment' => 'required',
        ]);

        if($validator->fails()) return response()->json([
            'message' => 'Invalid field',
            'errors' => $validator->errors()
        ], 422);


        Comment::create([
            'comment' => $request->comment,
            'user_id' => auth()->user()->id,
            'recipe_id' => $recipe->id
        ]);

        return response()->json([
            'message' => 'Comment success'
        ]);
    }
}

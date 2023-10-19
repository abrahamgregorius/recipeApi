<?php

namespace App\Http\Controllers;

use App\Models\Recipe;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RecipeController extends Controller
{
    public function index(Request $request) {
        $recipes = Recipe::orderBy('created_at', 'desc')->paginate(10);

        return response()->json([
            'recipes' => $recipes->map(function($recipe) {
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
                })
                // ->skip(($request->page - 1) * 10)->values()->take(10)
            ]);
    }

    public function show(string $slug) {
        $recipe = Recipe::where('slug', $slug)->first();

        return response()->json([
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
            'category' => [
                'id' => $recipe->category->id,
                'name' => $recipe->category->name,
                'slug' => $recipe->category->slug
            ],
            'comments' => $recipe->comments->map(function($comment) {
                return [
                    'id' => $comment->id,
                    'comment' => $comment->comment,
                    'created_at' => $comment->created_at,
                    'comment_author' => $comment->user->username,
                ];
            })
        ]);
    }

    public function best() {
        $recipes = Recipe::get();

        return $recipes->map(function($recipe) {
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
            ];}
        )->sortByDesc('ratings_avg')->values()->take(3);
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'category_id' => 'required|exists:categories,id',
            'energy' => 'required|numeric',
            'carbohydrate' => 'required|numeric',
            'protein' => 'required|numeric',
            'ingredients' => 'required',
            'method' => 'required',
            'tips' => 'required',
            'thumbnail' => 'nullable|image|mimes:jpg,png,jpeg',
        ]);

        if($validator->fails()) return response()->json([
            'message' => 'Invalid field',
            'errors' => $validator->errors()
        ], 422);

        $user = User::find(auth()->user()->id);
    
        if($request->hasFile('thumbnail')) {
            $file = $request->file('thumbnail');
            $filename = $file->getClientOriginalName();
            $file->move(public_path() . "/recipes/", "$filename");
        }

        Recipe::create([
            'title' => $request->title,
            'slug' => str($request->title)->slug(),
            'category_id' => $request->category_id,
            'energy' => $request->energy,
            'carbohydrate' => $request->carbohydrate,
            'protein' => $request->protein,
            'ingredients' => $request->ingredients,
            'method' => $request->method,
            'tips' => $request->tips,
            'thumbnail' => "recipes/$filename",
            'user_id' => $user->id,
        ]); 
    
        return response()->json([
            'message' => 'Recipe created successful'
        ]);
    }

    public function destroy(string $slug) {
        $recipe = Recipe::where('slug', $slug)->first();

        $recipe->delete();

        return response()->json([
            'message' => "Recipe deleted successful"
        ]);
    }

}

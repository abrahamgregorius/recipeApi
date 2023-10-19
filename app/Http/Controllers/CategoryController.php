<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function index() {
        $categories = Category::orderBy('name', 'asc')->get();

        return response()->json([
            'categories' => $categories
        ]);
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories,slug'
        ]);

        if($validator->fails()) return response()->json([
            'message' => 'Invalid field',
            'errors' => $validator->errors()
        ], 422);

        Category::create([
            'name' => $request->name,
            'slug' => $request->slug,
        ]);

        return response()->json([
            'message' => 'Category created successful'
        ]);
    }

    public function destroy(string $slug) {
        $category = Category::where('slug', $slug)->first();

        $category->delete();

        return response()->json([
            'message' => "Category deleted successful"
        ]);
    }
}

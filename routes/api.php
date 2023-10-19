<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\RatingController;
use App\Http\Controllers\RecipeController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('/v1')->group(function() {
    Route::get('/categories', [CategoryController::class, 'index']);
    Route::get('/recipes', [RecipeController::class, 'index']);
    Route::get('/recipes/{slug}', [RecipeController::class, 'show']);
    Route::get('/best-recipes', [RecipeController::class, 'best']);

    Route::post('/register', [UserController::class, 'register']);
    Route::post('/login', [UserController::class, 'login']);
    Route::middleware('login')->group(function() {
        Route::post('/logout', [UserController::class, 'logout']);
        Route::get('/profile', [UserController::class, 'profile']);
    
        Route::post('/recipes', [RecipeController::class, 'store']);
        Route::delete('/recipes/{slug}', [RecipeController::class, 'destroy']);
        
        Route::middleware('admin')->group(function() {
            Route::delete('/categories/{slug}', [CategoryController::class, 'destroy']);
            Route::post('/categories', [CategoryController::class, 'store']);
        
        });
            Route::post('/recipes/{slug}/rating', [RatingController::class, 'store']);
            Route::post('/recipes/{slug}/comment', [CommentController::class, 'store']);
    });


});
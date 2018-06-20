<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::Resource('/posts','User\PostController');
Route::post('/posts/like','User\PostController@like');
Route::Resource('/comments','User\CommentController');
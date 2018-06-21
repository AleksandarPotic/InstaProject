<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::Resource('/posts','User\PostController');
Route::post('/posts/like','User\PostController@like');
Route::Resource('/comments','User\CommentController');
Route::Resource('/users','User\UserController');
Route::post('/users/follow','User\UserController@follow');
Route::post('/users/unfollow','User\UserController@unfollow');
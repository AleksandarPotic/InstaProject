<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::Resource('/posts','User\PostController');
Route::post('/index','User\PostController@indexPost');
Route::post('/posts/like','User\PostController@like');
Route::post('/posts/user','User\PostController@user');
Route::Resource('/comments','User\CommentController');
Route::Resource('/users','User\UserController');
Route::post('/users/messanger','User\UserController@messanger');
Route::post('/users/sendMessage','User\UserController@sendMessage');
Route::post('/users/follower','User\UserController@follower');
Route::post('/users/following','User\UserController@following');
Route::post('/users/follow','User\UserController@follow');
Route::post('/users/unfollow','User\UserController@unfollow');
Route::get('/all_message','User\UserController@allMessage');
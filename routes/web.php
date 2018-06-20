<?php

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/','User\HomeController@index')->name('home.instapro');
Route::get('/auth','HomeController@auth');

Route::get('/{name1}',function(){
	return redirect('/');
})->where('name1','messanger');

Route::get('/{name2}',function(){
    return redirect('/');
})->where('name2','profile');

Route::get('/{name3}',function(){
    return redirect('/');
})->where('name3','chat');

Route::get('/{name3}',function(){
    return redirect('/');
})->where('name3','notification');



Route::get('/login12', function () {
    return view('login');
});
Route::get('/register12', function () {
    return view('register');
});

Route::get('/index', function () {
    return view('index1');
});
/*
Route::get('/profile', function () {
    return view('profile');
});
Route::get('/messanger', function () {
    return view('messanger1');
});
Route::get('/chat', function () {
    return view('chat');
});
Route::get('/notification', function () {
    return view('notification');
});
*/
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

<?php

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/','User\HomeController@index')->name('home.instapro');
Route::get('/profile','User\HomeController@index')->name('home.instapro');
Route::get('/messanger','User\HomeController@index')->name('home.instapro');
Route::get('/notification','User\HomeController@index')->name('home.instapro');
Route::get('/chat','User\HomeController@index')->name('home.instapro');
Route::get('/upload','User\HomeController@index')->name('home.instapro');
Route::get('/crop','User\HomeController@index')->name('home.instapro');
Route::get('/friends/{name1}/{name2}','User\HomeController@index')->name('home.instapro');
Route::get('/chat/{name1}/{name2}','User\HomeController@index')->name('home.instapro');
Route::get('/auth','HomeController@auth');

Route::get('/login12', function () {
    return view('login');
});
Route::get('/register12', function () {
    return view('register');
});

Route::get('/index', function () {
    return view('index1');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

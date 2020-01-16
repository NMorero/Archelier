<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index');

Auth::routes();

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/test', 'HomeController@test');

Route::get('/getProjectsByClient/{client}', 'HomeController@getProjectsByClient');

Route::get('/getViewsByProject/{project}', 'HomeController@getViewsByProject');

Route::get('/getPosts/{client}/{project}/{view}', 'HomeController@getPosts');

Route::get('/getReminders', 'HomeController@getReminders');

Route::get('/deleteReminder/{id}', 'HomeController@deleteReminder');

Route::get('/getTasks', 'HomeController@getTasks');

Route::get('/getUsers', 'HomeController@getUsers');

Route::get('/addReminder/{formData}', 'HomeController@addReminder');

Route::get('/addTask/{formData}', 'HomeController@addTask');

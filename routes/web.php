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

Route::get('/getTemplates', 'HomeController@getTemplates');

Route::get('/deleteReminder/{id}', 'HomeController@deleteReminder');

Route::get('/getTasks', 'HomeController@getTasks');

Route::get('/getUsers', 'HomeController@getUsers');

Route::get('/addReminder/{formData}', 'HomeController@addReminder');

Route::get('/addTask/{formData}', 'HomeController@addTask');

Route::post('/addPost', 'HomeController@addPost');

Route::get('/addEvent/{formData}', 'HomeController@addEvent');

Route::get('/addDelivery/{formData}', 'HomeController@addDelivery');

Route::get('/feedback/create', 'FeedbackController@create');

Route::post('/addFeedback', 'FeedbackController@addFeedback');

Route::get('/feedback/getProjectsByClient/{client}', 'HomeController@getProjectsByClient');

Route::get('/feedback/getViewsByProject/{project}', 'HomeController@getViewsByProject');

Route::get('/Admin', 'AdminController@home');

Route::get('/Admin/Clients/Person', 'AdminController@pageClientsPersons');

Route::get('/Admin/Clients/Person/getClientsPersons', 'AdminController@getClientsPersons');

Route::post('/Admin/addClientsPersons', 'AdminController@addClientsPersons');

Route::get('/Admin/Clients/Company', 'AdminController@pageClientsCompany');

Route::post('/Admin/addClientsCompany', 'AdminController@addClientsCompany');

Route::get('/Admin/Companies', 'AdminController@getCompaniesTable');

Route::post('/Admin/Companies/addCompany', 'AdminController@addCompany');


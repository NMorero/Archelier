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

Route::get('/Admin/Delete/All/DB', 'AdminController@deleteDb');

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

Route::get('/Feedback/Create', 'FeedbackController@create');

Route::get('/Feedback/Edit/{id}', 'FeedbackController@edit');

Route::post('/Feedback/Edit/saveFeedback', 'FeedbackController@saveFeedbackChange');

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

Route::get('/Admin/Developers', 'AdminController@pageDevelopers');

Route::post('/Admin/Developers/addDeveloper', 'AdminController@addDeveloper');

Route::get('/Admin/Persons', 'AdminController@pagePersons');

Route::get('/Admin/Persons/Delete/{id}', 'AdminController@deletePerson');

Route::post('/Admin/Persons/addPersons', 'AdminController@addPerson');

Route::post('/Admin/Managers/addProjectManager', 'AdminController@addPRManager');

Route::post('/Admin/Managers/addProjectLeader', 'AdminController@addPRLeader');

Route::get('/Admin/Projects/Managers', 'AdminController@pagePRManagers');

Route::get('/Admin/Projects/Leaders', 'AdminController@pagePRLeaders');

Route::post('/Admin/Projects/addProject', 'AdminController@addProject');

Route::post('/Admin/Projects/addView/{id}', 'AdminController@addView');

Route::post('/Admin/Users/addUser', 'AdminController@addUser');

Route::get('/Admin/Users/Delete/{id}', 'AdminController@deleteUser');

Route::get('/Admin/Users', 'AdminController@pageUsers');

Route::get('/Admin/Projects', 'AdminController@pageProjects');

Route::get('/Admin/Projects/Views/{id}', 'AdminController@pageViews');

Route::post('/Admin/Roles/addRol', 'AdminController@addRol');

Route::get('Admin/Roles', 'AdminController@pageRoles');

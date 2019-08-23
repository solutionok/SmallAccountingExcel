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

/**
 * frontend routes
 */
Route::view('/', 'deny');

Auth::routes();

//////////////////////// manager pakage ////////////////////////////////////////////////////////////////////////////
Route::get('/manager', 'ManagerController@index')->name('ManagerIndex');
Route::post('/manager/do-login', 'ManagerController@doLogin');
Route::get('/manager/logout', 'ManagerController@logout');

Route::get('/manager/workers', 'ManagerController@workers')->middleware(['manager']);
Route::get('/manager/workers/{id}', 'ManagerController@editworker')->middleware(['manager']);
Route::post('/manager/workers/save', 'ManagerController@saveWorker')->middleware(['manager']);

Route::get('/manager/customers', 'ManagerController@customers')->middleware(['manager']);
Route::get('/manager/customers/{id}', 'ManagerController@editcustomer')->middleware(['manager']);
Route::post('/manager/customers/save', 'ManagerController@saveCustomer')->middleware(['manager']);

Route::get('/manager/openjobscopello', 'ManagerController@openjobscopello')->middleware(['manager']);
Route::get('/manager/openjobscopello/{id}', 'ManagerController@editopenjobscopello')->middleware(['manager']);
Route::post('/manager/openjobscopello/save', 'ManagerController@saveOpenjobscopello')->middleware(['manager']);

Route::get('/manager/update', 'ManagerController@update')->middleware(['manager']);
Route::get('/manager/update/download/{what}', 'ManagerController@download')->middleware(['manager']);
Route::post('/manager/update/upload', 'ManagerController@upload')->middleware(['manager']);
Route::get('/manager/update/delete-hours', 'ManagerController@deleteHours')->middleware(['manager']);

//////////////////////// worker pakage ///////////////////////////////////
Route::get('/worker', 'WorkerController@index');
Route::post('/worker/do-login', 'WorkerController@doLogin');
Route::get('/worker/logout', 'WorkerController@logout');

Route::get('/worker/hours', 'WorkerController@hours')->middleware(['worker']);
Route::get('/worker/hours/{week}', 'WorkerController@hoursWeek')->middleware(['worker']);
Route::post('/worker/hours/{week}', 'WorkerController@hoursWeekSave')->middleware(['worker']);



//////////////////////// agent pakage ///////////////////////////////////
Route::get('/agent', 'AgentController@index');
Route::post('/agent/do-login', 'AgentController@doLogin');
Route::get('/agent/logout', 'AgentController@logout');

Route::get('/agent/workers', 'AgentController@workers')->middleware(['agent']);
Route::get('/agent/workers/{id}', 'AgentController@editworker')->middleware(['agent']);
Route::post('/agent/workers/save', 'AgentController@saveWorker')->middleware(['agent']);

Route::get('/agent/jobs', 'AgentController@jobs')->middleware(['agent']);
Route::get('/agent/jobs/{id}', 'AgentController@editjob')->middleware(['agent']);
Route::post('/agent/jobs/save', 'AgentController@savejob')->middleware(['agent']);



//////////////////////// sales pakage ///////////////////////////////////
Route::get('/sales', 'SalesController@index');
Route::post('/sales/do-login', 'SalesController@doLogin');
Route::get('/sales/logout', 'SalesController@logout');

Route::get('/sales/workers', 'SalesController@workers')->middleware(['sales']);
Route::get('/sales/workers/{id}', 'SalesController@editworker')->middleware(['sales']);
Route::post('/sales/workers/save', 'SalesController@saveWorker')->middleware(['sales']);

Route::get('/sales/customers', 'SalesController@customers')->middleware(['sales']);
Route::get('/sales/customers/{id}', 'SalesController@editcustomer')->middleware(['sales']);
Route::post('/sales/customers/save', 'SalesController@saveCustomer')->middleware(['sales']);

Route::get('/sales/openjobscopello', 'SalesController@openjobscopello')->middleware(['sales']);
Route::get('/sales/openjobscopello/{id}', 'SalesController@editopenjobscopello')->middleware(['sales']);
Route::post('/sales/openjobscopello/save', 'SalesController@saveOpenjobscopello')->middleware(['sales']);

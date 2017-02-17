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

Route::get('/', function () {
    return view('index');
});

Route::get('/page', function () {
    return view('page');
});

Route::get('/events','EventsController@showEvents')->name('profile');
Route::get('/events/{event_id}','BoutController@showBouts');
Route::get('/admin','AdminController@dashboard');

Route::post('/events/{event_id}/make-bet','BetsController@makeBet');
Route::post('/events/{event_id}/get-user-bets','BoutController@getUserBets');

Auth::routes();
Route::get('/home', 'HomeController@index');

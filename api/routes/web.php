<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/students','StudentsController@index');
Route::post('/studentpostData', "StudentsController@studentPostData" );
Route::put('/editStudent/{id}', "StudentsController@editStudent" );
Route::delete('/deleteStudent/{id}', "StudentsController@deleteStudent" );
Route::get('/exercise','ExerciseController@index');
Route::get('/getchapter/{id}','ExerciseController@getChapter');
Route::get('/getclass','ExerciseController@getClass');




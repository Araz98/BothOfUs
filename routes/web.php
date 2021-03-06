<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use DB;
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

Route::get('/','App\Http\Controllers\OrderController@show');
Route::get('/','App\Http\Controllers\OrderController@index');

Route::get('edit/{order_no}','App\Http\Controllers\OrderController@edit');
Route::post('/update/{order_no}','App\Http\Controllers\OrderController@update');

Route::get('delete/{order_no}','App\Http\Controllers\OrderController@delete');
Route::get('/search','App\Http\Controllers\OrderController@search');

Auth::routes();



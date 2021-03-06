<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('slider','Api\ApiEndController@slider');

Route::get('categories','Api\ApiEndController@categories');

Route::get('trending/category','Api\ApiEndController@trendingCategories');

/*registration customer*/
Route::post('/register', 'Api\ApiEndController@register');
/*login customer*/
Route::post('/login', 'Api\ApiEndController@login');
//logout
Route::post('/logout','Api\ApiEndController@logout')->middleware('auth:api');
/*change password*/
Route::post('change/password','Api\ApiEndController@changePassword')->middleware('auth:api');

/*user data */
Route::post('user/data','Api\ApiEndController@getData')->middleware('auth:api');
Route::post('update/image','Api\ApiEndController@updateImage')->middleware('auth:api');
Route::post('update/user','Api\ApiEndController@updateUser')->middleware('auth:api');

<?php

use Illuminate\Support\Facades\Route;
use app\Http\Controllers\ProjetController;
use Illuminate\Support\Facades\App;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AuthController;


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



Route::view('/societe', 'pages.societe')->name('societe');
Route::view('/industrie', 'pages.industrie')->name('industrie');
Route::view('/hotel', 'pages.hotel')->name('hotel');
Route::view('/service', 'pages.service')->name('service');
Route::view('/connexion', 'pages.connexion')->name('connexion');
Route::view('/projet', 'pages.dashproj')->name('projet');

Route::get('/dashproj', [RegisterController::class, 'getprojets']);
Route::get('delete/{id}',[RegisterController::class, 'destroy']);

Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register',[RegisterController::class, 'save'])->name('register');
Route::view('/agriculture', 'pages.agriculture')->name('agriculture');

// Route::get('{any}', function () {
//     return view('index');
// })->where('any', '.*');




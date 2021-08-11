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
    return view('pages.societe');
});



Route::view('/societe', 'pages.societe')->name('societe');
Route::view('/industrie', 'pages.industrie')->name('industrie');
Route::view('/hotel', 'pages.hotel')->name('hotel');
Route::view('/service', 'pages.service')->name('service');
Route::view('/connexion', 'pages.connexion')->name('connexion');
Route::view('/agriculture', 'pages.agriculture')->name('agriculture');

Route::view('/projet', [RegisterController::class, 'login'])->name('projet');

Route::get('/dashproj', [RegisterController::class, 'getprojets']);
Route::delete('/projet/delete/{id}',[RegisterController::class, 'destroy']);
Route::delete('/ville/delete/{id}', [RegisterController::class, 'deleteville']);
Route::redirect('/home','dashproj', 301);
Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register',[RegisterController::class, 'save'])->name('register');
Route::view('/societe', 'pages.societe')->name('societe');
Route::get('/ville', [RegisterController::class, 'getvilles']);
Route::post('/ville', [RegisterController::class, 'addville'])->name('ville');


// Route::get('{any}', function () {
//     return view('index');
// })->where('any', '.*');




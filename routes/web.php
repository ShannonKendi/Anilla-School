<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;

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

Route::get('/register', function () {
    return view('register');
});
Route::get('/login', [MainController::class, 'login']);
Route::post('/auth/check', [MainController::class, 'check'])->name('auth.check');
Route::post('/auth/save', [MainController::class, 'save'])->name('auth.save');

Route::get('/enroll', function () {
    return view('enroll');
});

Route::get('/unit/{id}', [MainController::class, 'unit']);
Route::get('/course/{id}', [MainController::class, 'course']);
Route::post('/reg_unit/{id}', [MainController::class, 'reg_unit']);

// remember to kill this user

Route::get('/student', [MainController::class, 'students'])->name('student');
Route::get('/register_units', [MainController::class, 'register_units']);

Route::get('/edit-student/{id}', [MainController::class, 'edit']);
Route::post('/update-student/{id}', [MainController::class, 'update_student']);
Route::post('/add-work/{id}', [MainController::class, 'add_cwork']);


Route::get('/notices', [MainController::class, 'notices']);
Route::get('/noticesteacher', [MainController::class, 'notices_teacher']);
Route::get('/coursework', function () {
    return view('STC/coursework');
});
Route::get('/teacher', [MainController::class, 'lec'])->name('teacher');
Route::get('/admin', [MainController::class, 'admin']);
Route::get('/logout', [MainController::class, 'logout'])->name('logout');


//functionality routes
Route::get('delete-student/{id}', [MainController::class, 'delete_student']);
Route::get('delete-staff/{id}', [MainController::class, 'delete_staff']);
Route::get('delete-unit/{id}', [MainController::class, 'delete_unit']);
Route::get('delete-work/{id}', [MainController::class, 'delete_work']);
Route::post('/auth/add-unit', [MainController::class, 'add_unit'])->name('auth.add-unit');
Route::post('/auth/add-staff', [MainController::class, 'add_staff'])->name('auth.add-staff');
Route::post('/auth/add-notice', [MainController::class, 'add_notice'])->name('auth.add-notice');
Route::post('/auth/add-cwork', [MainController::class, 'add_cwork'])->name('auth.add-cwork');

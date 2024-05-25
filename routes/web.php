<?php

use App\Http\Controllers\PemesananController;
use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('dashboard', function () {
    return view('dashboard');
}) -> name('dashboard');

Route::controller(PemesananController::class) -> prefix('pemesanan') -> group (function () {
    Route::get('', 'index') -> name('pemesanan');
    Route::get('tambah', 'tambah') -> name('pemesanan.tambah');
    Route::post('tambah', 'simpan') -> name('pemesanan.tambah.simpan');
    Route::get('edit/{id}', 'edit') -> name('pemesanan.edit');
    Route::post('edit/{id}', 'update') -> name('pemesanan.tambah.update');
    Route::get('hapus/{id}', 'hapus') -> name('pemesanan.hapus');
});


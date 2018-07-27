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
use App\User;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});
Route::post('/registro', function (Request $request) {
    
    //return $request;
    $user=  User::create([
        'name' => $request['name'],
        'email' => $request['email'],
        'password' => bcrypt($request['password']),
    ]);
    Auth::login($user, true);

    return redirect('/admin/profile')->with(['message' => 'Bienvenido al sistema', 'alert-type' => 'info']);
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogControlller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::controller(BlogControlller::class)->group(function () {

    //home page
    Route::get('/', 'index');
    //add blog
    Route::get('add-blog', 'AddPage');
    Route::post('add-blog', 'AddBlog');
    //view blog
    Route::get('blog-view/{blog_slug}', 'viewBlog');

});

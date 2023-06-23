<?php

namespace App\Http\Controllers;


use App\Models\Blog;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class BlogControlller extends Controller
{
    //home
    public function index()
    {
        $blogs =Blog::all();
        return view('home',compact('blogs'));
    }

    //add blog
    public function AddPage()
    {
        return view('add-blog');
    }
    public function AddBlog(Request $req){

        $Blog = new Blog();

        $Blog->title = $req['title'];
        $Blog->slug = Str::slug($req['slug']);
        $Blog->desc = $req['desc'];

        $curTime = new \DateTime();
        $Blog->time = $curTime->format("d-m-Y | H:i:A");

        $fileName = time() . "-" . $req->file('image')->getClientOriginalName();
        $req->image->move(public_path('uploads'), $fileName);

        $Blog->img = "uploads\\" . $fileName;
        $Blog->save();

        return redirect('/');

    }

    //view blog
    public function viewBlog(string $blog_slug)
    {
     $blog = Blog::where('slug',$blog_slug)->first();
    //  dd($blog);
    return view('view',compact('blog'));

    }

}

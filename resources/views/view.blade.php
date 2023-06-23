@extends('inc')

@section('title')
Blog - View
@endsection

@section('content')
<div class="row">
    <div class="col-md-12 grid-margin">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div>
                  Blog View
                </div>
                <div class="float-end">
                    <a href="{{ url('/') }}" class="btn btn-primary btn-sm ">back</a>
                </div>
            </div>

            <div class="card-body">

            <h3 class="text-info">{{$blog->title}}</h3>
            <p>{{$blog->time}}</p>

            <img src="{{url($blog->img)}}" width="1200" height="500" alt="img"/>

            <p style="font-family: 'Inder', sans-serif;  color: #29263a; font-size: 20px; margin:10px 20px;">{{$blog->desc}}</p>



            </div>

        </div>
    </div>
</div>
@endsection

@extends('inc')

@section('title')
Add Blog
@endsection

@section('content')
<div class="row">
    <div class="col-md-12 grid-margin">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div>
                    <h3 class="text-info">
                        Add Blog
                    </h3>
                </div>
                <div class="float-end">
                    <a href="{{ url('/') }}" class="btn btn-primary btn-sm ">Back</a>
                </div>
            </div>

            <div class="card-body">
                <form action="{{ url('add-blog') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" required/>
                        </div>

                        <div class="col-md-12 mb-3">
                            <label>Slug</label>
                            <input type="text" name="slug" class="form-control" required/>
                        </div>

                        <div class="col-md-12 mb-3">
                            <label>Description</label>
                            <textarea name="desc" class="form-control" rows="3" required></textarea>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label>Image</label>
                            <input type="file" name="image" class="form-control" required/>
                        </div>

                        <div class="col-md-12 mb-3">
                            <button type="submit" class="btn btn-primary float-end">Add Blog</button>
                        </div>

                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
@endsection

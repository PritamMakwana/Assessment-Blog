@extends('inc')

@section('title')
Home
@endsection

@section('content')
<div class="row">
    <div class="col-md-12 grid-margin">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div>
                    <h3 class="text-info">
                        Blogs
                    </h3>
                </div>
                <div class="float-end">
                    <a href="{{ url('add-blog') }}" class="btn btn-primary btn-sm ">Add Blog</a>
                </div>
            </div>

            <div class="card-body">
                <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Time</th>
                        <th>View</th>
                    </tr>
                </thead>
                @php($i = 0)
                <tbody>
                    @forelse ($blogs as $blog)
                    <tr>
                        <td>{{ ++$i}}</td>
                        <td><span style="
                            display:inline-block;
                            white-space: nowrap;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            max-width: 20ch;">{{ $blog->title }}</span></td>
                        <td>{{ $blog->time }}</td>
                        <td>
                            <a href="{{url('blog-view/'.$blog->slug)}}" class="btn-sm btn btn-success">View</a>
                        </td>
                    </tr>

                    @empty
                    <tr>
                        <td colspan="5">No blog Available</td>
                    </tr>

                    @endforelse
                </tbody>
                </table>

            </div>

        </div>
    </div>
</div>
@endsection

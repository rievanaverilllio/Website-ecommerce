@extends('layouts.app')
@section('title', $viewData['title'])
@section('content')
    <div class="row">
        <div class="col-md-6 col-lg-4 mb-2">
            <img src="{{ asset('/img/vintage1.jpg') }}" class="img-fluid rounded">
        </div>
        <div class="col-md-6 col-lg-4 mb-2">
            <img src="{{ asset('/img/vintage2.jpg') }}" class="img-fluid rounded">
        </div>
        <div class="col-md-6 col-lg-4 mb-2">
            <img src="{{ asset('/img/vintage3.jpg') }}" class="img-fluid rounded">
        </div>
    </div>
@endsection

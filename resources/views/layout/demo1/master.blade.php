@extends('base.base')

@section('content')

    @php
        $layout = theme()->getOption('layout', 'main/type');
        theme()->addHtmlClass('body', 'app-' . $layout);
    @endphp
    @include('layout/demo1/_default')

@endsection

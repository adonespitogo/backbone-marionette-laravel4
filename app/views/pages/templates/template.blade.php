@extends('base')

@section('head')

@stop
@section('body')

	@include('pages.templates.header')
	
	@yield('content')

	@include('pages.templates.header')
	
@stop
@section('scripts')

@stop
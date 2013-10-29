@extends('base')

@section('head')

@stop

@section('body')
	<div id="wrap"> 
		@include('admins.users.templates.header')
		@yield('content')
		<div id="push"></div>
	</div>
	<div id="footer">
		@include('admins.users.templates.footer')
	</div>
@stop

@section('js')
	{{HTML::script('js/jquery.js')}}
	{{HTML::script('js/bootstrap.js')}}
	@yield('scripts')
@stop
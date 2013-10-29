<!DOCTYPE html>
<html>
	<head>
		{{HTML::style('css/flatly.css')}}
		{{HTML::style('css/sticky.css')}}
		@yield('head')
	</head>
	<body style='padding-top: 70px'>
		@yield('body')
		@yield('js')
	</body>
</html>
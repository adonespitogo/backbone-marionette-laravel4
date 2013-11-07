<!doctype html>
<html>
	<head>
		<title>Backbone</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		{{HTML::style('css/bootstrap.min.css')}}
		{{HTML::style('css/sticky-footer.css')}}
		{{ stylesheet_link_tag() }}
	</head>
	<body>

		<div id="wrap">

			<div id="main">
				<div id='header-region'></div>
				<div id='alerts-region'></div>
				<div id='main-region'></div>
			</div>

		</div>

		<div id="footer">
			<div id='footer-region'></div>
		</div>
			
		{{ javascript_include_tag() }}

	</body>
</html>
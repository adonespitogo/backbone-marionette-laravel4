<!doctype html>
<html>
	<head>
		<title>Backbone</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 		{{HTML::style('bootstrap/css/bootstrap.css')}}
		{{HTML::style('css/sticky.css')}} -->
		{{ stylesheet_link_tag() }}
		{{ TemplateHelper::load() }}
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
		<script type="text/javascript">
			App.start();
		</script>

	</body>
</html>
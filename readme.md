<h1>Backbone.Marionette in Laravel</h1>

<h3>Backbone.Marionette Setup for Laravel</h3>

<strong>Scripts</strong>

This setup is packed with <a href="https://github.com/CodeSleeve/asset-pipeline">Codesleeve's asset-pipeline</a>.
Read the documentation about asset pipeline (for non-railsians). This is a great tool to manage dependcies and organization of your
js files (I personally use coffescript in writing my apps).

<strong>Loading templates into your Backbone App:</strong>

Templates should be stored inside app/views/app folder. These templates should be wrapped inside a
<code>script</code> tag with type <code>text/html</code> or <code>text/template</code>.

Example:

```
	<script id='links-template' type="text/html">
		<div class='nav'>
			<ul>

			</ul>
		</div> 
	</script>
```

I created a TemplateHelper library and added it in autoloads. This library simply concatenates every file it finds
in the app/views/app folder and store it in app/views/backbone_templates.html file.

To load the backbone view templates in your application main view, simply echo <code>Template::load()</code>
anywhere in your application's main view. This will concatinate every file inside app/views/app folder in local environment
and loads the app/views/backbone_templates.html file in production.

<strong>Enjoy!</strong>

To do:

 - Improve template compilation
 - Clean tests
 - Improve file organization
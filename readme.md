<h1>Backbone.Marionette Setup for Laravel</h1>

This setup is using <a href="https://github.com/CodeSleeve/asset-pipeline">Codesleeve's asset-pipeline</a>.
Read the documentation about asset pipeline (for non-railsians). This is a great tool to manage dependcies and organization of your
js files (I personally use coffescript in writing my apps).

<strong>File structure</strong>



<strong>Templates</strong>

I configured the Backbone.Marionette's<a href="https://github.com/marionettejs/backbone.marionette/blob/master/docs/marionette.renderer.md">Renderer</a> to look in <code>app/assets/javascripts/backbone/apps</code> directory using JST.

An example code to load referrence a template in your Marionette views:

```coffee-script

class UsersApp.UserList extends Marionette.ItemView
	template: JST["user/list/templates/userList"]

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
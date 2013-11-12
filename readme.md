<h1>Backbone.Marionette Setup for Laravel</h1>

This setup is using <a href="https://github.com/CodeSleeve/asset-pipeline">Codesleeve's asset-pipeline</a>.
Read the documentation about asset pipeline (for non-railsians). This is a great tool to manage dependcies and organization of your
js files (I personally use coffescript in writing my apps).

<strong>File structure</strong>



<strong>Templates</strong>

I configured the Backbone.Marionette's <a href="https://github.com/marionettejs/backbone.marionette/blob/master/docs/marionette.renderer.md">Renderer</a> to look in <code>app/assets/javascripts/backbone/apps</code> directory using JST.

An example code to load referrence a template in your Marionette views:

```coffee-script

class UsersApp.UserList extends Marionette.ItemView
	template: JST["user/list/templates/userList"]

```

<strong>Docs not finished yet</strong>

To do:

 - More precise documentation
@App.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showHeader: =>
			# route = Backbone.history.fragment
			# console.log Backbone.history.fragment
			HeaderApp.List.Controller.showNav()

	@.on "start", ->
		API.showHeader()

	App.reqres.setHandler "route:triggered", ->
		API.changeNav()

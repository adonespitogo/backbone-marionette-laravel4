@App.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		showFooter: ->
			FooterApp.Show.Controller.showFooter()
			# console.log "footer ni"

	FooterApp.on 'start', ->
		
		API.showFooter()
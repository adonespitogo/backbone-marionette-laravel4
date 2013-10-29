@App = do (Backbone, Marionette) ->

	App = new Marionette.Application

	App.rootRoute = "users"

	App.addRegions
		alertsRegion: 
			selector: "#alerts-region"
			regionType: Backbone.Marionette.TransitionRegion
			
		headerRegion: "#header-region"
		mainRegion: 
			selector: "#main-region"
			regionType: Backbone.Marionette.TransitionRegion

		footerRegion: "#footer-region"

	App.addInitializer ->
		App.module("FooterApp").start()
		App.module("HeaderApp").start()

	App.on "initialize:after", ->
		if Backbone.history
			Backbone.history.start()
			# @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
			# console.log Backbone.history.fragment

	App
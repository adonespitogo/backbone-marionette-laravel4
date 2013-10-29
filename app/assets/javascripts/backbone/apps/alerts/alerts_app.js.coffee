@App.module "AlertsApp", (AlertsApp, App, Backbone, Marionette, $, _) ->

	api =
		showMessage: (message, type) ->
			AlertsApp.Controller.show(message, type)


	App.reqres.setHandler "alerts:show", (message, type) ->
		api.showMessage message, type

	App.vent.on "alert:user", (message, type) ->
		api.showMessage message, type
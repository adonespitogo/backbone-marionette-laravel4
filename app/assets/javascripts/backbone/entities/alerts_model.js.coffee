@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Alert extends Entities.Model

	api =
		newAlert: (message, type) ->
			new Entities.Alert
				type: type
				message: message

	App.reqres.setHandler "alert:entity", (message, type) ->
		api.newAlert message, type
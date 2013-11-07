@App.module "AlertsApp", (AlertsApp, App, Backbone, Marionette, $, _) ->

	class AlertsApp.Alerts extends App.Views.ItemView
		template: "alerts/show/tmpl/alerts"
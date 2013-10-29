@App.module "AlertsApp", (AlertsApp, App, Backbone, Marionette, $, _) ->

	AlertsApp.Controller =

		show: (message, type) ->

			alertView = @getAlertView message, type
			
			App.alertsRegion.show alertView

		getAlertView: (message, type) ->

			model = App.request "alert:entity", message, type

			# console.log model

			alert = new AlertsApp.Alerts
						model: model

			alert
			# switch type
			# 	when 'success' then new AlertsApp.Alert
			# 								model: model
			# 	when 'danger' then new AlertsApp.Danger
											# model: model



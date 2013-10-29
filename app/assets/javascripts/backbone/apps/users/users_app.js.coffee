@App.module "UsersApp", (UsersApp, App, Backbone, Marionette, $, _) ->

	class UsersApp.Router extends Marionette.AppRouter
		appRoutes:
			"users" : "listUsers"
			"users/new" : "newUser"
			"users/:id/edit" : "edit"

	api =
		listUsers: ->
			UsersApp.List.Controller.listUsers()

		newUser: ->
			UsersApp.New.Controller.showForm()

		edit: (id) ->
			user = App.request "fetch:user", id, (user) ->
				UsersApp.Edit.Controller.showEditForm(user)

	App.addInitializer ->
		new UsersApp.Router
			controller: api

	App.reqres.setHandler "add:new:user", ->
		api.newUser()

	App.reqres.setHandler "edit:user:view", (user) ->
		UsersApp.Edit.Controller.getEditForm(user)
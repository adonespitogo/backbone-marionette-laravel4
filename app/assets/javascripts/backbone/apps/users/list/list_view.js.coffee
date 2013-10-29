@App.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.User extends App.Views.ItemView

		toBeEdited = false

		template: "#user-list"

		tagName: 'tr'

		triggers:
			"click a[class='btn btn-success']" : "edit:user:clicked"
			"click a[class='btn btn-danger']" : "delete:user:clicked"

		modelEvents:
			"change" : "render"

	class List.Empty extends App.Views.ItemView
		template: "#empty-user-list"

	class List.Users extends App.Views.CompositeView
		template: '#user-list-view'
		itemView: List.User
		emptyView: List.Empty
		itemViewContainer: 'tbody'

		collectionEvents:
			"add" : "render"
			"remove" : "render"

	class List.Panel extends App.Views.ItemView
		template: "#panel-view"

		collectionEvents:
			"reset" : "render"
			"remove" : "render"

		triggers:
			"click #add-new-user" : "add:new:user"

	class List.Layout extends App.Views.Layout
		template: "#user-list-layout"

		regions:
			panelRegion: "#panel-region"
			usersRegion: "#users-region"
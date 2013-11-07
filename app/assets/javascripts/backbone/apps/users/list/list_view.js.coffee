@App.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.User extends App.Views.ItemView

		toBeEdited = false

		template: "users/list/templates/user"

		tagName: 'tr'

		triggers:
			"click a[class='btn btn-success']" : "edit:user:clicked"
			"click a[class='btn btn-danger']" : "delete:user:clicked"

		modelEvents:
			"change" : "render"

	class List.Empty extends App.Views.ItemView
		template: "users/list/templates/empty_user"

	class List.Users extends App.Views.CompositeView
		template: 'users/list/templates/user_list'
		itemView: List.User
		emptyView: List.Empty
		itemViewContainer: 'tbody'

		collectionEvents:
			"reset" : "render"

		triggers:
			"click a.prev":
				event: "userlist:prev"
				preventDefault: true

			"click a.next" :
				event: "userlist:next"
				preventDefault: true

	class List.Layout extends App.Views.Layout
		template: "users/list/templates/list_layout"

		regions:
			usersRegion: "#users-region"
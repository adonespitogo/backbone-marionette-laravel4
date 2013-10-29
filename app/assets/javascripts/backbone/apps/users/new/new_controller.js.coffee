@App.module "UsersApp.New", (New, App, Backbone, Marionette, $, _) ->

	New.Controller =

		showForm: ->
			form = @getFormView()
			form.on "submit:new:user", (args) =>
				args.view.$el.children().find("button[type=submit]").addClass('disabled').html('Processing')
				user = args.view.serialize()
				user = App.request "new:user:entity", user
				# console.log user
				@submitNewUser user

			form.on "cancel:new:user", (params) ->
				App.navigate "users", trigger: true

			App.mainRegion.show form
			# console.log "add new user"

		getFormView: ->
			form = new New.Form

		submitNewUser: (user) ->

			user.save '', '',
				success: =>
					App.navigate "#users", trigger: true
@App.module "UsersApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

	Edit.Controller =

		showEditForm: (user) ->
			form = @getEditForm(user)
			App.mainRegion.show form

		getEditForm: (user) ->
			form = new Edit.Form
						model: user

			form.on "submit:edit:form", (args) ->
				args.view.ui.submitBtn.addClass('btn-success disabled').html "Processing"
				user = args.view.serialize()
				user = App.request "new:user:entity", user
				user.save '', '',
					success: ->
						App.navigate "#users", trigger: true
						App.vent.trigger "alert:user", "User has been updated successfully!", "success"

					error: =>
						App.vent.trigger "alert:user", "There was an error while processing your request!", "danger"
						args.view.ui.submitBtn.attr('class', 'btn btn-success').html "Update User"

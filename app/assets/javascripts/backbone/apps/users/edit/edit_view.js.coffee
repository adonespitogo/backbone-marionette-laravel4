@App.module "UsersApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->

	
	class Edit.Form extends Marionette.ItemView

		template: 'users/edit/tmpl/edit'

		bindings:
			'text .first-name' : 'first_name'
			'value input[name="first_name"]' : 'first_name'

			'text .last-name' : 'last_name'
			'value input[name="last_name"]' : 'last_name'

		triggers:
			"submit form" :
				event: "submit:edit:form"
				preventDefault: true
				
		ui:
			submitBtn : "button[type=submit]"

		onDomRefresh: ->
			@bindModel()


		serialize : =>
				id: @$("input[name='id']").val(),
				username: @$("input[name='username']").val(),
				first_name: @$("input[name='first_name']").val(),
				last_name: @$("input[name='last_name']").val()
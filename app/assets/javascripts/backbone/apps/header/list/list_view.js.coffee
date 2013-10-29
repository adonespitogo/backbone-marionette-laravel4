@App.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.HeaderLink extends App.Views.ItemView
		template: "#header-link"
		tagName: 'li'

		triggers:
			'click' : 'clicked:header:link'

	class List.HeaderLinks extends App.Views.CompositeView
		template: '#header-link-list'
		itemView: List.HeaderLink
		itemViewContainer: 'ul'
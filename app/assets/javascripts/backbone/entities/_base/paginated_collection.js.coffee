@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) =>

	class Entities.PaginatedCollection extends Backbone.Paginator.requestPager
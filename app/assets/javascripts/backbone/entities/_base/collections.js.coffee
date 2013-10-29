@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Collection extends Backbone.Collection

	    paginate: (perPage, page) ->

	    	page = page - 1
	    	collection = @
	    	collection = _ collection.rest perPage*page
	    	collection = _ collection.first perPage
	    	collection.map (model) ->
	    		model.toJSON()

	    # pagination : function(perPage, page) {
	    #    page = page-1;
	    #    var collection = this;
	    #    collection = _(collection.rest(perPage*page));
	    #    collection = _(collection.first(perPage));    
	    #    return collection.map( function(model) { return model.toJSON() } ); 
	    # }
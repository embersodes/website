Embersodes.Model = DS.Model.extend({
	store: Embersodes.store
});

Embersodes.Model.reopenClass({
	store: Embersodes.store,
	findAll: function() {
		return this.store.findAll(this);
	}
})

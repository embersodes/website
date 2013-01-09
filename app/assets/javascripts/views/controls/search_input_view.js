Embersodes.SearchInputView = Ember.View.extend({
	templateName: 'controls/search_input',

	didInsertElement: function() {
		this.$('.searchInput').focus(function() {
			if( this.value == this.defaultValue ) {
				this.value = "";
			}
		}).blur(function() {
			if( !this.value.length ) {
				this.value = this.defaultValue;
			}
		});
	}
});

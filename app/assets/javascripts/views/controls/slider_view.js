Embersodes.SliderView = Ember.View.extend({
	templateName: 'controls/slider',
	
	content: null,
	
	didInsertElement: function() {
		this.$().codaSlider();
	}
});
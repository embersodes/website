Embersodes.VideoView = Ember.View.extend({
	templateName: 'controls/video',
	
	videoSrc: null,
	imageSrc: null,
	
	mimeType: function() {
		var videoSrc = this.get('videoSrc') || '';
		var match = videoSrc.match(/\.([\w\d]+)$/);
		var extension = match ? match[1] : '';
		return 'video/' + extension;
	}.property('videoSrc')
});
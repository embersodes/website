Embersodes.Episode = Embersodes.Model.extend({
	title: DS.attr('string'),
	shortDescription: DS.attr('string'),
	longDescription: DS.attr('string'),
	postedTime: DS.attr('date'),
	smallImageSrc: DS.attr('string'),
	videoSrc: DS.attr('string')
});

/*Embersodes.episodes = [
	Embersodes.Episode.create({ id: 1, imageSrc: "assets/small1.jpg", title: "Introduction to MVC in Ember.js", shortDescription: "A guide to the bare essentials of Ember.js objects and views." }),
	Embersodes.Episode.create({ id: 2, imageSrc: "assets/small6.jpg", title: "Routing in Ember", shortDescription: "Build client-side navigation with the router built into Ember.js." })
]*/
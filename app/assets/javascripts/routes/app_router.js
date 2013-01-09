Embersodes.Router = Ember.Router.extend({
	location: 'hash',

	root: Ember.Route.extend({
		goHome: Ember.Route.transitionTo('root.index'),
		goToEpisodes: Ember.Route.transitionTo('episodes.index'),
		goToAbout: Ember.Route.transitionTo('about'),
		goToContact: Ember.Route.transitionTo('contact'),


		index: Ember.Route.extend({
			route: '/',

			connectOutlets: function(router) {
				router.get('applicationController').connectOutlet('home');
			}
		}),
	
		episodes: Ember.Route.extend({
			route: '/episodes',

	      	showEpisode: function(router, event) {
	        	router.transitionTo('episodes.show', event.context);
	      	},
	
			eventTransitions: {
				showEpisode: 'show'
			},
			
			index: Ember.Route.extend({
				route: '/',

				connectOutlets: function(router) {
					router.get('applicationController').connectOutlet('episodes', Embersodes.Episode.findAll());
				}
			}),
			
			show: Ember.Route.extend({
				route: '/:episode_id',
				
				connectOutlets: function(router, context) {
					router.get('applicationController').connectOutlet('episode', context);
				}

			})
		}),
		
		about: Ember.Route.extend({
			route: '/about',
			connectOutlets: function(router) {
				router.get('applicationController').connectOutlet('about');
			}				
		}),
		
		contact: Ember.Route.extend({
			route: '/contact',
			connectOutlets: function(router) {
				router.get('applicationController').connectOutlet('contact');
			}				
		})		
	})
});


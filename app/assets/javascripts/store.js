Embersodes.Store = DS.Store.extend({
  revision: 4,
  adapter: DS.RESTAdapter.create()
});

Embersodes.store = Embersodes.Store.create();
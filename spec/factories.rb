FactoryGirl.define do
  factory :episode do |episode|
    episode.title "Ember.js 101"
    episode.short_description "Ember.js is awesome... let's see why..."
    episode.long_description "This is not a very long description but probably long enough for the purposes of this test"
    episode.posted_time Time.now - 1
  end
end
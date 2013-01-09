class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :short_description
      t.text :long_description
      t.datetime :posted_time

      t.timestamps
    end
  end
end

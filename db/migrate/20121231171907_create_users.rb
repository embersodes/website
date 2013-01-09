class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :github_uid
      t.string :github_username
      t.string :site_url
      t.string :gravatar_token
      t.string :token

      t.timestamps
    end
  end
end

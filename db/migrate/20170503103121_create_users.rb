class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uid
      t.string :oauth_token
      t.string :oauth_token_secret

      t.timestamps
    end
  end
end

class CreateJawboneAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :jawbone_accounts do |t|
      t.string :token
      t.string :secret
      t.integer :user_id

      t.timestamps
    end
  end
end

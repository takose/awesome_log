class RenameJawboneAccountToAuthInfo < ActiveRecord::Migration[5.0]
  def change
    rename_table :jawbone_accounts, :auth_infos
  end
end

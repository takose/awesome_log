class AddServiceIdToAuthInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :auth_infos, :service_id, :integer
  end
end

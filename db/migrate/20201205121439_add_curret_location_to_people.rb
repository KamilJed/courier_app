class AddCurretLocationToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :current_location, :json
  end
end

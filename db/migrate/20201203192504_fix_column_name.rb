class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :people, :pass_encr, :password_digest
  end
end

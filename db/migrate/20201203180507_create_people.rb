class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :eMail
      t.string :pass_encr
      t.string :name
      t.string :surname
      t.string :phoneNumber
      t.string :PESEL

      t.timestamps
    end
  end
end

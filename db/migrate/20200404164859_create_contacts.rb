class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :birthday
      t.string :bio
      t.string :phone
      t.string :email
    end
  end
end

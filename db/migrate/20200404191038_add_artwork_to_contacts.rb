class AddArtworkToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :artwork, :string
  end
end

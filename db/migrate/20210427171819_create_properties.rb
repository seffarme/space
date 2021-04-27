class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.string :photo
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end

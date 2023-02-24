class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price
      t.string :type

      t.timestamps
    end
  end
end

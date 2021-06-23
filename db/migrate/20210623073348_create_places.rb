class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.integer :building_age
      t.text :remarks

      t.timestamps
    end
  end
end

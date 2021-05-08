class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :map_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

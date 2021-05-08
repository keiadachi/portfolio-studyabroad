class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :country_id
      t.string :city_name
      t.integer :city_population
      t.text :climate
      t.integer :tourist_attraction

      t.timestamps
    end
  end
end

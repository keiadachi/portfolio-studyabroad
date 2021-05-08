class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :capital
      t.integer :country_population
      t.string :language
      t.string :currency
      t.string :image_id

      t.timestamps
    end
  end
end

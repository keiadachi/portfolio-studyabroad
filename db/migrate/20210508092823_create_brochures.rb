class CreateBrochures < ActiveRecord::Migration[5.2]
  def change
    create_table :brochures do |t|
      t.string :title
      t.string :brochure_countries
      t.date :departure_date
      t.string :image_id

      t.timestamps
    end
  end
end

class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.integer :city_id
      t.string :school_name
      t.string :course_name
      t.text :introduction
      t.string :stay
      t.string :nationality

      t.timestamps
    end
  end
end

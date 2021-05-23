class AddColumnsToSchools < ActiveRecord::Migration[5.2]
  def change
    
    add_column :schools, :country_id, :integer
    add_column :schools, :course_introduction, :text
    add_column :schools, :school_city_name, :string
    
  end
end

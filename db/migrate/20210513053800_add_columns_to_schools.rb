class AddColumnsToSchools < ActiveRecord::Migration[5.2]
  def change
    
    add_column :schools, :country_id, :integer
    
  end
end

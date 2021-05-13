class AddCountryIdToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :Country_id, :integer
  end
end

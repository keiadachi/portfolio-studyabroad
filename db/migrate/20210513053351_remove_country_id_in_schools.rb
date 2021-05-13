class RemoveCountryIdInSchools < ActiveRecord::Migration[5.2]
  def change
    remove_column :schools, :Country_id, :integer
  end
end

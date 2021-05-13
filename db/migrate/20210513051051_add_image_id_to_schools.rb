class AddImageIdToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :image_id, :string
  end
end

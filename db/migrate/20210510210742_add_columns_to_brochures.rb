class AddColumnsToBrochures < ActiveRecord::Migration[5.2]
  def change
    add_column :brochures, :introduction, :text
  end
end

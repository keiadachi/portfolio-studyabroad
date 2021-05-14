class AddIntroductionToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :introduction, :text
  end
end

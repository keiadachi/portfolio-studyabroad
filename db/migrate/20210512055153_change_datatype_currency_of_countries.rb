class ChangeDatatypeCurrencyOfCountries < ActiveRecord::Migration[5.2]
  def change
    
    change_column :countries, :country_population, :string
    
  end
end

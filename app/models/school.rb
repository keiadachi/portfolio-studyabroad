class School < ApplicationRecord
  
  belongs_to :country
  belongs_to :city
  
end

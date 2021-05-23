class Country < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要　カラム名image_id

  #has_many :cities, dependent: :destroy
  has_many :schools, dependent: :destroy

  validates :country_name, :capital, :country_population, :language, :currency,
  :image, :introduction, presence: true


end

class Brochure < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要　カラム名image_id

  validates :title, :introduction, :image, presence: true

end

class School < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要　カラム名image_id

  belongs_to :country
  belongs_to :city



end

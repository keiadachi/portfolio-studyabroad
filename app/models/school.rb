class School < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要　カラム名image_id

  belongs_to :country
  #belongs_to :city

  # validates :school_name, presence: true, uniqueness: true,
  #                 length: { minimum: 3, maximum: 10 }

  # validates :introduction, :course_introduction, presence: true, uniqueness: true,
  #                 length: { minimum: 150, maximum: 300 }

  # validates :stay, :nationality, :course_name, presence: true,
  #                 length: { minimum: 1 }



end

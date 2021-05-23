class School < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要カラム名image_id

  belongs_to :country

  def self.search_for(content)
      School.where("school_city_name LIKE?", "%#{content}%")
  end

  # validates :school_name, presence: true, uniqueness: true,
  #                 length: { minimum: 3, maximum: 10 }

  # validates :introduction, :course_introduction, presence: true, uniqueness: true,
  #                 length: { minimum: 150, maximum: 300 }

  # validates :stay, :nationality, :course_name, presence: true,
  #                 length: { minimum: 1 }



end

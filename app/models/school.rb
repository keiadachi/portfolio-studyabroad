class School < ApplicationRecord

  attachment :image
  #attachment_fieldを使用する際に必要カラム名image_id

  belongs_to :country

  def self.search_for(content)
      School.where("school_city LIKE?", "%#{content}%")
  end

  validates :school_name, presence: true,
                  length: { minimum: 3, maximum: 30 }

  validates :introduction, :course_introduction, presence: true,
                  length: { minimum: 100, maximum: 200 }

  validates :stay, :nationality, :course_name, presence: true,
                  length: { minimum: 1 }

  validates :school_city, presence: true


end

class Contact < ApplicationRecord

  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 3, maximum: 10 }

  validates :message, presence: true, uniqueness: true,
                   length: { minimum: 10, maximum: 150 }

  validates :email, :phone_number, presence: true


end

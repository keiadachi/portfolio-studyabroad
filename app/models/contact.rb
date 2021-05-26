class Contact < ApplicationRecord

  validates :name, presence: true,
                   length: { minimum: 1, maximum: 15 }

  validates :message, presence: true,
                   length: { minimum: 10, maximum: 150 }

  validates :email, :phone_number, presence: true


end

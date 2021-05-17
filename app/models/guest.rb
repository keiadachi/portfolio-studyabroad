class Guest < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def active_for_authentication?
    super && (self.guest_status == true)
  end
  #退会機能

  validates :name,  presence: true
  validates :postal_code,  presence: true, format: {with: /\A\d{7}\z/}
   # 郵便番号のフォーマット指定 ハイフン無し７桁固定 Viewのフォーム設定
  validates :address, presence: true
  validates :phone_number, presence: true

  def self.user
    find_or_create_by!(name: 'guest', email: 'guest@example.com', postal_code: '0000000',
    address: '東京都豊島区東池袋', phone_number: '09000000000' ) do |guest|
      guest.password = SecureRandom.urlsafe_base64
      # 新規登録に必要なカラムをすべて登録
    end
  end

end

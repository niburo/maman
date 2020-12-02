class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :items
   with_options presence: true do
   validates :nickname
   validates :birthday
  end
  has_many :messages
  has_many :room_users
  has_many :rooms, through: :room_users

 PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
   validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください', on: :registration
  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' } do
   validates :last_name
   validates :first_name
  end

  with_options presence: true, format: { with: /\A[ァ-ン]+\z/, message: 'カナを使用してください' } do
   validates :last_name_kana
   validates :first_name_kana
  end
  
end

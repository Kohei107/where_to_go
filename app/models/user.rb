class User < ApplicationRecord
  has_many :lists
  has_many :tasks

  def self.guest
    find_or_create_by!(nickname: 'ゲスト', email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true
         validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]{6,}+\z/i, message: ' Include both letters and numbers' }
end

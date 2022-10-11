class User < ApplicationRecord
  has_many :applications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :email, format: URI::MailTo::EMAIL_REGEXP
  
  enum role: %i[:user, :admin]

  def self_authenticate(email, password)
    user = User.find_for_authentication(email: email)
    user&.valid_password?(password) ? user : nil 
  end 
end

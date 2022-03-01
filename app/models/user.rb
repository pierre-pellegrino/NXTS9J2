class User < ApplicationRecord
  has_many :articles
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :jwt_authenticatable,
         :registerable,
         :recoverable, :rememberable, :validatable,
         jwt_revocation_strategy: JwtDenylist
end

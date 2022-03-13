class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tweets, dependent: :destroy 
  validates :name, presence: true 
  validates :profile, length: { maximum: 200 } 
end

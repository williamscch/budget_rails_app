class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, foreign_key: 'user_id'
  has_many :expenses, foreign_key: 'user_id'

  validates :name, presence: true, length: { maximum: 25 }
end

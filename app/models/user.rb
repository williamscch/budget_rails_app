class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, inverse_of: 'user', foreign_key: 'user_id', dependent: :destroy
  has_many :expenses, inverse_of: 'user', foreign_key: 'user_id', dependent: :destroy

  validates :name, presence: true, length: { maximum: 25 }
end

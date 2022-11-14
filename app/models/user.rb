class User < ApplicationRecord
  has_many :groups, foreign_key: 'user_id'
  has_many :expenses, foreign_key: 'user_id'

  validates :name, presence: true, length: { maximum: 25 }
end

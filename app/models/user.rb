class User < ApplicationRecord
    has_many :groups
    has_many :expenses
end

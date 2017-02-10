class Category < ApplicationRecord
  has_many :connections
  has_many :posts, through: :connections
end
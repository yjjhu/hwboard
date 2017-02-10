class Post < ApplicationRecord
  has_many :connections
  has_many :categorys, through: :connections
end
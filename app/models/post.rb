class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  has_many :connections
  has_many :categorys, through: :connections
end
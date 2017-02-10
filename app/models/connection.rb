class Connection < ApplicationRecord
  belong_to :posts
  belong_to :categorys
end
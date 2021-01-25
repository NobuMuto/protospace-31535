class Prototype < ApplicationRecord
  belongs_to :users
  has_many   :comments
  has_many   :users, through: comments

end

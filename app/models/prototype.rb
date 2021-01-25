class Prototype < ApplicationRecord
  belongs_to :users
  has_many   :users
  has_one_attached :image


end

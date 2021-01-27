class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, :profile, :occupation, :position, presence: true
  with_options presence: true do
    validates :name
    validates :profile
    validates :occupation
    validates :position
  end

  #has_many :comments
  #has_many :prototypes, through: comments
  has_many :prototypes
end

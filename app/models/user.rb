class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_many :kids
  has_many :promises, through: :kids
  #has_many :actions, through: :kids
  #has_many :actions, through: :promises
  
end

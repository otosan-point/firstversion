class Promise < ApplicationRecord
  belongs_to :kid
  has_many :actions
  has_one :user, through: :kid
  
  #validation
  validates_presence_of :promise

end

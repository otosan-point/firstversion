class Promise < ApplicationRecord
  belongs_to :kid
  has_many :actions
  belongs_to :user
  
  #validation
  validates_presence_of :promise, :kid_id

end

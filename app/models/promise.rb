class Promise < ApplicationRecord
  belongs_to :kid
  has_many :actions
  
  #validation
  validates_presence_of :promise, :kid_id

end

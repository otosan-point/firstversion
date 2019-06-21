class Action < ApplicationRecord
  belongs_to :promise
  has_one :kid, through: :promise
  #has_one :user, through: :promise
  #has_one :user, through: :kids
  
#validation
  #validates_presence_of :promise_id, :kid_id

end

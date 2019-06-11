class Action < ApplicationRecord
  belongs_to :promise
  
#validation
  validates_presence_of :promise_id, :kid_id

end

class Kid < ApplicationRecord
  belongs_to :user
  has_many :promises, ->{ order("created_at DESC") }
  has_many :actions
  
  #validation
  validates_presence_of :user_id, :name

end

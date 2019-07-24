class Kid < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :promises, ->{ order("created_at DESC") }
  has_many :opactions, ->{ order("created_at DESC") }
  
  #validation
  validates_presence_of :user_id, :name

end

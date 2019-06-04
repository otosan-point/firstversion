class Kid < ApplicationRecord
  belongs_to :user
  has_many :promises, ->{ order("created_at DESC") }
  has_many :actions
end

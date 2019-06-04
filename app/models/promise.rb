class Promise < ApplicationRecord
  belongs_to :kid
  has_many :actions
end

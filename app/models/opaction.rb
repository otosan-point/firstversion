class Opaction < ApplicationRecord
    has_one_attached :image
    belongs_to :promise
    has_one :kid, through: :promise
end

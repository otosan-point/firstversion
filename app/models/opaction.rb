class Opaction < ApplicationRecord
    belongs_to :promise
    has_one :kid, through: :promise
end

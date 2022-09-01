class Membership < ApplicationRecord
    validates :client, uniqueness: true

    belongs_to :gym
    belongs_to :client
end



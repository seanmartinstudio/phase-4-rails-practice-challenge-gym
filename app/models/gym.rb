class Gym < ApplicationRecord
    has_many :clients, :memberships
end

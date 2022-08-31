class Client < ApplicationRecord
    has_many :gyms, :memberships
end

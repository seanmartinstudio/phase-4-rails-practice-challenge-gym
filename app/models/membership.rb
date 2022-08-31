class Membership < ApplicationRecord
    belongs_to :gyms, :clients
end

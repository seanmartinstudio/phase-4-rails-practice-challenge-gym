class Membership < ApplicationRecord
    belongs_to :gym, :client
end

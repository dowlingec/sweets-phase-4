class Vendor < ApplicationRecord
    has_one :vendor_sweet
    has_many :sweets, through: :vendor_sweet
end

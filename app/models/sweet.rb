class Sweet < ApplicationRecord
    has_one :vendor_sweet
    has_many :vendors, through: :vendor_sweet
end

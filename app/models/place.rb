class Place < ApplicationRecord
has_many :stations, dependent: :destroy
validates :property_name, presence: true
validates :rent, presence: true
end

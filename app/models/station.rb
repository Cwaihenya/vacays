class Station < ApplicationRecord
  belongs_to :place
  validates :station_name, presence:  true
end

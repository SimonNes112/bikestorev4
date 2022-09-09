class BikeType < ApplicationRecord
    has_many :bike_models ,dependent: :destroy
end

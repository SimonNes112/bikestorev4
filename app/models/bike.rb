class Bike < ApplicationRecord
    has_many :bike_photos, dependent: :destroy
    belongs_to :bike_model
    
end

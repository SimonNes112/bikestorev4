class BikeModel < ApplicationRecord
    has_many :bikes ,dependent: :destroy
    has_many :bike_types 
    belongs_to :bike_brand
end

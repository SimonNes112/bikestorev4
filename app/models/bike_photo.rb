class BikePhoto < ApplicationRecord
    belongs_to :bike
    has_one_attached :image
end

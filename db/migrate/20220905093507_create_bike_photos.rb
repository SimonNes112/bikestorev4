class CreateBikePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_photos do |t|
      t.string :photo
      t.belongs_to :bike

      t.timestamps
    end
  end
end

class CreateBikeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_types do |t|
    t.string :gender
    t.string :size
    t.string :color


      t.timestamps
    end
  end
end

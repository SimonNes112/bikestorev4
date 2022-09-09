class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.belongs_to :bike_model
      t.decimal :price
      t.boolean :electric


      t.timestamps
    end
  end
end

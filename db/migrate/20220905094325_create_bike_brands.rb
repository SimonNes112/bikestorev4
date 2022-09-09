class CreateBikeBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_brands do |t|
      t.string :name_brand
      t.belongs_to :bike_model
      t.string :logo
      t.string :delivery_condition
      t.string :email
      t.timestamps
    end
  end
end

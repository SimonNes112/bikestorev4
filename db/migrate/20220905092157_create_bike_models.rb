class CreateBikeModels < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_models do |t|
      t.string :models_name
      t.belongs_to :bike_brand
      t.belongs_to :bike_type

      t.timestamps
    end
  end
end

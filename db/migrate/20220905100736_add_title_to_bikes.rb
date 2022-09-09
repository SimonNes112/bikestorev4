class AddTitleToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :title, :string, after: :price
  end
end

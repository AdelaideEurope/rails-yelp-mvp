class RemoveStringFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :string, :string
  end
end

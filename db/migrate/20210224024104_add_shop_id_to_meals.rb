class AddShopIdToMeals < ActiveRecord::Migration[6.0]
  def change
    add_reference :meals, :shop, foreign_key: true
  end
end

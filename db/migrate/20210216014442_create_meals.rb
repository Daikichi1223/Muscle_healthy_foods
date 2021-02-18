class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name,         null: false
      t.text :explanation,    null: false
      t.integer :category,    null: false
      t.integer :price,       null: false
      t.timestamps
    end
  end
end

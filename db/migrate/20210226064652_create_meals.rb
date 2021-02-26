class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string     :name,        null: false
      t.text       :explanation, null: false
      t.integer    :genre_id,    null: false
      t.integer    :protein,     null: false
      t.integer    :fat,         null: false
      t.integer    :carbo,       null: false
      t.integer    :price,       null: false
      t.references :shop,        foreign_key: true
      t.timestamps
    end
  end
end
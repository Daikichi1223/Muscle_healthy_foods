class Meal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  belongs_to :shop
  has_one_attached :image

  with_options presence: true do 
    validates :name
    validates :explanation
    validates :protein
    validates :fat
    validates :carbo
    validates :price
  end

  validates :genre_id, numericality: { other_than: 1 }
end

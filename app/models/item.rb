class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition

  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :image, presence: true
  validates :name, presence: true
  validates :price, presence: true
end

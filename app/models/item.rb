class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition
  has_many :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :image, presence: true
  validates :name, presence: true
  validates :price, presence: true
end

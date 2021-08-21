class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :listings_features
  has_many :features, through: :listings_features, dependent: :destroy
  accepts_nested_attributes_for :listings_features
  has_one_attached :picture
end

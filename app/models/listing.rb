class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :listings_features
  has_many :features, through: :listings_features, dependent: :destroy
  accepts_nested_attributes_for :listings_features
  has_one_attached :picture

  before_save :remove_whitespace
  before_validation :convert_price_to_cents, if: :price_changed?

  private

  def remove_whitespace
    self.title = self.title.strip
    self.description = self.description.strip
  end

  def convert_price_to_cents
    self.price = (self.attributes_before_type_cast["price"].to_f * 100).round
  end

end

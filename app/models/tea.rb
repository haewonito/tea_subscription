class Tea < ApplicationRecord
  validates :name, presence: true
  validates :price_per_oz, presence: true, numericality: true

  has_many :subscriptions
end

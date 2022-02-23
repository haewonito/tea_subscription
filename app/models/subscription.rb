class Subscription < ApplicationRecord
  validates :title, presence: true
  validates :frequency, presence: true

  belongs_to :customer
  belongs_to :tea
end

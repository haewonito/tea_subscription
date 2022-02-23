class Subscription < ApplicationRecord
  validates :title, presence: true
  validates :frequency, presence: true

  belongs_to :customer
  belongs_to :tea

  def calculate_price_per_month
    if self.frequency == "weekly"
      price_per_month = self.tea.price_per_oz * 4
    elsif self.frequency == "biweekly"
      price_per_month = self.tea.price_per_oz * 2
    elsif self.frequency == "monthly"
      price_per_month = self.tea.price_per_oz
    else
      price_per_month = self.tea.price_per_oz/2
    end
  end

end

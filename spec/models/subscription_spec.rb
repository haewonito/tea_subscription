require "rails_helper"

RSpec.describe Subscription, type: :model do
  describe "validations" do
    it { should validate_presence_of :title}
    it { should validate_presence_of :frequency}
  end

  describe "relationships" do
    it {should belong_to :customer}
    it {should belong_to :tea}
  end

  describe "instance methods" do
    it "#calculate_price_per_month" do
      haewon = Customer.create!(first_name: "Haewon", last_name: "Jeon", email: "haewon@email.com", address: "305 Hook St., Denver, CO 80525")
      sencha = Tea.create!(name: "Sencha", description: "Clean and crisp", temperature: 140, brew_time_in_minutes: 5, price_per_oz: 20)
      subscription1 = Subscription.create!(title: "Subscription1", frequency: "biweekly", customer_id: haewon.id, tea_id: sencha.id)

      expect(subscription1.calculate_price_per_month).to eq(40)
    end
  end


end

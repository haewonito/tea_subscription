require "rails_helper"

RSpec.describe Tea, type: :model do
  describe "validations" do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it {should have_many :subscriptions}
  end

  describe "instance methods" do
  end
end

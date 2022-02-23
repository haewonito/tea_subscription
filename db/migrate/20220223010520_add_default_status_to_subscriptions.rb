class AddDefaultStatusToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    change_column_default :subscriptions, :status, "active"
  end
end

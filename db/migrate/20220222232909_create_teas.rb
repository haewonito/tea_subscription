class CreateTeas < ActiveRecord::Migration[6.1]
  def change
    create_table :teas do |t|
      t.string :name
      t.text :description
      t.integer :temperature
      t.integer :brew_time_in_minutes
      t.decimal :price_per_oz

      t.timestamps
    end
  end
end

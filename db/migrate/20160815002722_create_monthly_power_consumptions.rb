class CreateMonthlyPowerConsumptions < ActiveRecord::Migration
  def change
    create_table :monthly_power_consumptions do |t|
      t.float :kwhpm
      t.integer :month_int
      t.integer :year
      t.integer :consumer_id

      t.timestamps null: false
    end
  end
end

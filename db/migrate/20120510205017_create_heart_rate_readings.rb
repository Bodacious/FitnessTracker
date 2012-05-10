class CreateHeartRateReadings < ActiveRecord::Migration
  def change
    create_table :heart_rate_readings do |t|
      t.with_options(null: false) do |r|        
        t.date :date
        t.integer :value, limit: 3
      end
    end
    add_index :heart_rate_readings, :date
  end
end

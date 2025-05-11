class CreateEligableDaysParts < ActiveRecord::Migration[8.0]
  def change
    create_table :eligable_days_parts do |t|
      t.integer :year, null: false
      t.integer :days_per_week, null: false
      t.integer :public_holidays, null: false
      t.integer :unpaid_leave, null: false
      t.integer :sick_days, null: false

      t.timestamps
    end
  end
end

class CreateDailyManpowers < ActiveRecord::Migration
  def change
    create_table :daily_manpowers do |t|
      t.integer :number
      t.integer :workers
      t.decimal :hours
      t.decimal :man_hours
      t.string :cost_code
      t.string :location
      t.text :notes
      t.references :daily_id, index: true

      t.timestamps
    end
  end
end

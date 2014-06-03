class CreateDailyEquipments < ActiveRecord::Migration
  def change
    create_table :daily_equipments do |t|
      t.integer :number
      t.string :name
      t.decimal :operating_hours
      t.decimal :idel_hours
      t.string :cost_code
      t.string :location
      t.boolean :inspected
      t.time :inspection_time
      t.text :notes
      t.integer :daily_id

      t.timestamps
    end
  end
end

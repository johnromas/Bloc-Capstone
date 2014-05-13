class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.references :job, index: true
      t.date :date
      t.references :user, index: true
      t.integer :am_temp
      t.integer :pm_temp
      t.string :weather_desc
      t.text :notes

      t.timestamps
    end
  end
end

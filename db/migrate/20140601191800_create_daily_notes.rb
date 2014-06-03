class CreateDailyNotes < ActiveRecord::Migration
  def change
    create_table :daily_notes do |t|
      t.integer :number
      t.boolean :issue
      t.string :location
      t.text :comment
      t.integer :daily_id

      t.timestamps
    end
  end
end

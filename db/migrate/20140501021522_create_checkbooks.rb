class CreateCheckbooks < ActiveRecord::Migration
  def change
    create_table :checkbooks do |t|
      t.string :name
      t.text :description
      t.decimal :budget
      t.decimal :cost_to_date
      t.decimal :savings_overrun

      t.timestamps
    end
  end
end

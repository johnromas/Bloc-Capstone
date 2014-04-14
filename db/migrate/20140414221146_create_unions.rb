class CreateUnions < ActiveRecord::Migration
  def change
    create_table :unions do |t|
      t.string :type

      t.timestamps
    end
  end
end

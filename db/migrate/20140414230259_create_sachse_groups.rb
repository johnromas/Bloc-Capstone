class CreateSachseGroups < ActiveRecord::Migration
  def change
    create_table :sachse_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end

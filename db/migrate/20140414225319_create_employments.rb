class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.references :company, index: true
      t.references :contact, index: true

      t.timestamps
    end
  end
end

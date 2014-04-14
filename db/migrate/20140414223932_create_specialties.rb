class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.references :company, index: true
      t.references :trade, index: true

      t.timestamps
    end
  end
end

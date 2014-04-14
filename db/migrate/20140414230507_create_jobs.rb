class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :number
      t.string :precon_number
      t.string :building
      t.string :address
      t.string :city
      t.references :state, index: true
      t.string :zip
      t.references :country, index: true
      t.references :project_phase, index: true
      t.references :project_type, index: true
      t.references :sachse_group, index: true
      t.integer :sqft
      t.references :union, index: true
      t.text :comments
      t.datetime :precon_date
      t.datetime :start_date
      t.datetime :turnover_date
      t.references :contract_type, index: true

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.references :state, index: true
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :website
      t.references :company_type, index: true
      t.references :trade, index: true
      t.text :notes

      t.timestamps
    end
  end
end

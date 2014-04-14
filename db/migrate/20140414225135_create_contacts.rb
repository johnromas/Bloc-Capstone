class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :company, index: true
      t.string :f_name
      t.string :l_name
      t.string :title
      t.references :company_department, index: true
      t.string :address
      t.string :city
      t.references :state, index: true
      t.string :zip
      t.references :country, index: true
      t.string :mobile_phone
      t.string :alt_phone
      t.text :notes

      t.timestamps
    end
  end
end

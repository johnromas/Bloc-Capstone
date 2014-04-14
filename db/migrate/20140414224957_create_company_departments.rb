class CreateCompanyDepartments < ActiveRecord::Migration
  def change
    create_table :company_departments do |t|
      t.string :name

      t.timestamps
    end
  end
end

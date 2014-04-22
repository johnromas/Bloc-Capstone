class ChangeDateTypes < ActiveRecord::Migration
  def change
    change_column :jobs, :turnover_date, :date
    change_column :jobs, :start_date, :date 
  end
end

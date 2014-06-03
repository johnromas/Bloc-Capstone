class FixDailyIdColumn < ActiveRecord::Migration
  def change
    rename_column :daily_manpowers, :daily_id_id, :daily_id
  end
end

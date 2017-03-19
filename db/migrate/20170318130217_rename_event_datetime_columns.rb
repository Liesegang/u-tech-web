class RenameEventDatetimeColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :event_datetimes, :anc_start_time
  	remove_column :event_datetimes, :anc_end_time
	rename_column :event_datetimes, :des_start_time, :start_time
    rename_column :event_datetimes, :des_end_time, :end_time
  end
end

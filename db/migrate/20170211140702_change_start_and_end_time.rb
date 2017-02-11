class ChangeStartAndEndTime < ActiveRecord::Migration[5.0]
  def change
    remove_column :seminar_datetimes, :anc_end_time
    remove_column :seminar_datetimes, :des_end_time
    add_column :seminar_datetimes, :anc_end_time, :datetime, null: false
    add_column :seminar_datetimes, :des_end_time, :datetime, null: false
  end
end

class AddStartAndEndTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :seminar_datetimes, :ancestor, :anc_start_time
    rename_column :seminar_datetimes, :descendent, :des_start_time
    add_column :seminar_datetimes, :anc_end_time, :integer, null: false
    add_column :seminar_datetimes, :des_end_time, :integer, null: false


  end
end

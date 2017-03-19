class AddColumnToEventDatetime < ActiveRecord::Migration[5.0]
  def change
  	add_column :event_datetimes, :title, :string, null: false
  end
end

class RenameSeminarDescToEventLongDesc < ActiveRecord::Migration[5.0]
  def change
    rename_table :seminar_descs, :event_long_descs
    rename_table :members_seminars, :members_events
    rename_table :seminar_datetimes, :event_datetimes
    rename_table :seminar_docs, :event_docs
    rename_table :seminars, :events

    rename_column :members_events, :seminar_id, :event_id
    rename_column :event_datetimes, :seminar_id, :event_id
	rename_column :event_long_descs, :seminar_id, :event_id
    rename_column :event_docs, :seminar_id, :event_id
  end
end

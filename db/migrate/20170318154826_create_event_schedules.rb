class CreateEventSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :event_schedules do |t|
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.string :day, null: false
      t.references :event, null: false, unique: true, foreign_key: true
      t.timestamps
    end
  end
end

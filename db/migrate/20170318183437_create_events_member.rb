class CreateEventsMember < ActiveRecord::Migration[5.0]
  def change
    create_table :events_members do |t|
      t.integer  :member_id, null: false, foreign_key: true
      t.integer  :event_id, null: false, foreign_key: true
      t.timestamps
    end

    add_index  :events_members, [:member_id, :event_id], unique: true
  end
end

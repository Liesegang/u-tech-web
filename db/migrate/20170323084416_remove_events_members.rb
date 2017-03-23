class RemoveEventsMembers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :events_members
  end
end

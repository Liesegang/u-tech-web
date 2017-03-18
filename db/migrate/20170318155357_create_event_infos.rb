class CreateEventInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :event_infos do |t|
      t.string :message, null: false
      t.datetime :due, null: false
      t.references :event, null: false, unique: true, foreign_key: true
      t.timestamps
    end
  end
end

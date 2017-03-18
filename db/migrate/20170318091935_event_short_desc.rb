class CreateEventShortDesc < ActiveRecord::Migration[5.0]
  def change
  	create_table :event_short_descs do |t|
      t.text :desc, null: false
      t.references :event, null: false, unique: true, foreign_key: true
      t.timestamps
    end
  end
end

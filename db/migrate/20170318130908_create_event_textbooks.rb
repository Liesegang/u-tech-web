class CreateEventTextbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :event_textbooks do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.references :event, null: false, unique: true, foreign_key: true

      t.timestamps
    end
  end
end

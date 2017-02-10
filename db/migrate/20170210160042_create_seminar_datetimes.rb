class CreateSeminarDatetimes < ActiveRecord::Migration[5.0]
  def change
    create_table :seminar_datetimes do |t|
      t.datetime :ancestor, null: false
      t.datetime :descendent, null: false
      t.references :seminar, null: false, foreign_key: true
      t.timestamps
    end

  end
end

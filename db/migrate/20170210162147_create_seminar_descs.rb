class CreateSeminarDescs < ActiveRecord::Migration[5.0]
  def change
    create_table :seminar_descs do |t|
      t.text :desc, null: false
      t.references :seminar, null: false, unique: true, foreign_key: true
      t.timestamps
    end
  end
end

class CreateSeminarDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :seminar_docs do |t|
      t.string :title, null: false
      t.text :desc, null: false
      t.text :url, null: false
      t.references :seminar, null: false, foreign_key: true
      t.timestamps
    end

    add_index :seminar_docs, :title
  end
end

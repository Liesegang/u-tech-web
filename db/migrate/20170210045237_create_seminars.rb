class CreateSeminars < ActiveRecord::Migration[5.0]
  def change
    create_table :seminars do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end

    add_index :seminars, :name

  end
end

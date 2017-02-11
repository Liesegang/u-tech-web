class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name, null: false, limit: 20
      t.string :last_name, null: false, limit: 20
      t.string :email, null: false, unique: true
      t.string :university, null: false
      t.integer :grade, null: false, limit: 2
      t.timestamps
    end

    add_index :members, :email
  end
end

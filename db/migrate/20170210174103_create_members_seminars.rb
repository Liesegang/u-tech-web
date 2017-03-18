class CreateMembersSeminars < ActiveRecord::Migration[5.0]
  def change
    create_table :members_seminars do |t|
      t.integer  :member_id, null: false, foreign_key: true
      t.integer  :seminar_id, null: false, foreign_key: true
      t.timestamps
    end

    add_index  :members_seminars, [:member_id, :seminar_id], unique: true

  end
end

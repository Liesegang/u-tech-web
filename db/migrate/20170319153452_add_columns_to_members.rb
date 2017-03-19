class AddColumnsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :nickname, :string, null: false
    add_column :members, :major, :string, null: false
    add_column :members, :password_digest, :string, null: false
  end
end

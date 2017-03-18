class AddColumnToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :year, :integer, null: false
    add_column :events, :kind, :string, null: false
    add_column :events, :stard_date, :date, null: false
    add_column :events, :end_date, :date, null: false
  end
end

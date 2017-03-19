class AddImageColumnToEvent < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :image, :string, null: false
  end
end

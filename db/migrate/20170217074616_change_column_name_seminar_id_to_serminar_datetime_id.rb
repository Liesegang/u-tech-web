class ChangeColumnNameSeminarIdToSerminarDatetimeId < ActiveRecord::Migration[5.0]
  def change
  	    rename_column :seminar_docs, :seminar_id, :seminar_datetime_id
  end
end

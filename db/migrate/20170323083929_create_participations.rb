class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations do |t|
		t.references :member, null:false #外部キー
		t.references :event, null:false #外部キー
		t.timestamps null: false
    end
  end
end

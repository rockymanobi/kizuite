class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :event
      t.string :name
      t.string :comment
      t.integer :locked

      t.timestamps
    end
    add_index :attendances, :event_id
  end
end

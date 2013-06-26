class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description, limit: 4000
      t.datetime :from_date
      t.datetime :to_date
      t.string :create_user_name
      t.integer :capacity
      t.datetime :deadline
      t.string :location

      t.timestamps
    end
  end
end

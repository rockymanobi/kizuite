class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :password_digest
      t.string :login_id

      t.timestamps
    end
  end
end

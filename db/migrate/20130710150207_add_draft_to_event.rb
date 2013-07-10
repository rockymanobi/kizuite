class AddDraftToEvent < ActiveRecord::Migration
  def change
    add_column :events, :draft, :integer
  end
end

class AddUserIdToFudEntries < ActiveRecord::Migration
  def change
    add_column :fud_entries, :user_id, :integer
    add_index :fud_entries, :user_id
  end
end

class CreateFudEntries < ActiveRecord::Migration
  def change
    create_table :fud_entries do |t|
      t.string :fud
      t.boolean :anonymous, default: true

      t.timestamps null: false
    end
  end
end

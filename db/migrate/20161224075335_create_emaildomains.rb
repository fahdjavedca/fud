class CreateEmaildomains < ActiveRecord::Migration
  def change
    create_table :emaildomains do |t|
      t.string :domain
      t.integer :validstatus

      t.timestamps null: false
    end
  end
end

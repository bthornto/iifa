class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.datetime :date
      t.string :product
      t.string :reason
      t.text :synopsis
      t.text :notes
      t.integer :store_number
      t.string :store_name
      t.string :city
      t.string :state
      t.string :coding_level2
      t.string :brand_code
      t.string :brand
      t.string :ownership_type
      t.boolean :duplicate

      t.timestamps
    end
  end
end

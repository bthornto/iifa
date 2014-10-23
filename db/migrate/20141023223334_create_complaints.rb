class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.datetime :date
      t.string :product
      t.string :reason
      t.text :synopsis

      t.timestamps
    end
  end
end

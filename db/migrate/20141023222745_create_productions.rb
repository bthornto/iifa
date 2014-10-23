class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :month
      t.integer :quantity

      t.timestamps
    end
  end
end

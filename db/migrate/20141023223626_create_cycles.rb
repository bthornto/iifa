class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.datetime :date
      t.references :user, index: true
      t.references :flavor, index: true
      t.references :size, index: true
      t.integer :quantity
      t.references :defect_type, index: true
      t.integer :cavity_number
      t.integer :job_number
      t.integer :shift
      t.references :location, index: true

      t.timestamps
    end
  end
end

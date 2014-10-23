class CreateDefectTypes < ActiveRecord::Migration
  def change
    create_table :defect_types do |t|
      t.string :name
      t.integer :sbuxid

      t.timestamps
    end
  end
end

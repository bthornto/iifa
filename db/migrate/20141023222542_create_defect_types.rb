class CreateDefectTypes < ActiveRecord::Migration
  def change
    create_table :defect_types do |t|
      t.string :type
      t.integer :sbuxid

      t.timestamps
    end
  end
end

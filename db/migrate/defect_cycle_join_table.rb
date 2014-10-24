class CreateDefectTypeCycleJoinTable < ActiveRecord::Migration
  def change
    create_table :cycles_defect_types, id: false do |t|
      t.integer :defect_type_id
      t.integer :cycle_id
    end
  end
end

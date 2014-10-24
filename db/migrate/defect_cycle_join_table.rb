class CreateDefectTypeCycleJoinTable < ActiveRecord::Migration
  def change
    create_table :defect_types_cycles, id: false do |t|
      t.integer :defect_type_id
      t.integer :cycle_id
    end
  end
end

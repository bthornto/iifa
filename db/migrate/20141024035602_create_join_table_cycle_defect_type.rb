class CreateJoinTableCycleDefectType < ActiveRecord::Migration
  def change
    create_join_table :cycles, :defect_types do |t|
      # t.index [:cycle_id, :defect_type_id]
      # t.index [:defect_type_id, :cycle_id]
    end
  end
end

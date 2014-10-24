require 'csv'
desc "Imports cycles"
task :import_cycles => [:environment] do
    CSV.foreach('db/cycles.csv', :headers => true) do |row|
      cycle = (row.to_hash)
      cycles = cycle['defecttype'].split(/,/)
      import_cycle = []
      cycles.each do |c_id|
         dt = DefectType.find_by sbuxid: cycle['defecttype']
         import_cycle << dt
      end
      cycle['defecttype'] = import_cycle
      Complaint.create!(cycle)
    end
end

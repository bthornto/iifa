require 'csv'
require 'pp'
desc "Imports defects"
task :import_defect => [:environment] do
    CSV.foreach('db/defect.csv', :headers => true) do |row|
      DefectType.create!(row.to_hash)
    end
end

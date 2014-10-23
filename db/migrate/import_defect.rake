#lib/tasks/import_defect.rake
require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
    CSV.foreach('defect.csv', :headers => true) do |row|
      Defect.create!(row.to_hash)
    end
end

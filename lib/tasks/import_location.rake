require 'csv'
desc "Imports location"
task :import_location do
    CSV.foreach('db/location.csv', :headers => true) do |row|
      Location.create!(row.to_hash)
    end
end

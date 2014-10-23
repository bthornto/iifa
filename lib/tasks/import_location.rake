require 'csv'
desc "Imports location"
<<<<<<< Updated upstream
task :import_location => :environment do
=======
task :import_location => [:environment] do
>>>>>>> Stashed changes
    CSV.foreach('db/location.csv', :headers => true) do |row|
      Location.create!(row.to_hash)
    end
end

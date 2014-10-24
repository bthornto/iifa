require 'csv'
desc "Imports sizes"
task :import_sizes => [:environment] do
    CSV.foreach('db/size.csv', :headers => true) do |row|
      Size.create!(row.to_hash)
    end
end

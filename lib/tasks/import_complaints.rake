require 'csv'
require 'date'
desc "Imports complaints"
task :import_complaints => [:environment] do
    CSV.foreach('db/complaints.csv', :headers => true) do |row|
      puts row
      foo = (row.to_hash)
      pp foo
      date = Date.strptime(foo['date'], '%m/%d/%y')
      foo['date'] = date
      Complaint.create!(foo)
    end
end

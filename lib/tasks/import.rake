require 'csv'
require 'pp'

namespace :import do
  desc 'Imports defects'
  task defects: :environment do
    CSV.foreach('db/defect.csv', headers: true) do |row|
      DefectType.create!(row.to_hash)
    end
  end

  desc 'Imports complaints'
  task complaints: :environment do
    CSV.foreach('db/complaints.csv', headers: true) do |row|
      foo = (row.to_hash)
      date = Date.strptime(foo['date'], '%m/%d/%y')
      foo['date'] = date
      Complaint.create!(foo)
    end
  end

  desc 'Import flavors from txt file'
  task flavors: :environment do
    file = 'db/flavors.txt'
    File.open(file).each do |flavor|
      Flavor.create ({ name: flavor })
    end
  end

  desc 'Imports location'
  task locations: :environment do
    CSV.foreach('db/location.csv', headers: true) do |row|
      Location.create!(row.to_hash)
    end
  end

  desc 'Imports sizes'
  task sizes: :environment do
    CSV.foreach('db/size.csv', headers: true) do |row|
      Size.create!(row.to_hash)
    end
  end

  desc 'Import all'
  task all: [:defects, :complaints, :flavors, :locations, :sizes]

end

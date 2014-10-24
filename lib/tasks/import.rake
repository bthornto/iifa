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

  desc "Imports cycles"
  task cycles: :environment do
      CSV.foreach('db/cycles.csv', :headers => true) do |row|
        cycle = (row.to_hash)
        import = {}
        import['date'] = Date.strptime(cycle['date'], '%m/%d/%y')
        import['user_id'] = "1"
        temp = Flavor.find_by name: cycle['flavor']
        import['flavor_id'] = temp.id unless temp.nil?
        temp = Size.find_by size: cycle['size']
        import['size_id'] = temp.id unless temp.nil?
        import['quantity'] = cycle['qty']


        defects = cycle['defecttype'].split(/,/)
        #pp defects
        import_cycle = []
        defects.each do |c_id|
           temp = DefectType.find_by sbuxid: c_id
           import_cycle << temp.id unless temp.nil?
        end
        import['defect_type_id'] = import_cycle
        import['cavity_number'] = cycle['cavitynum']
        import['job_number'] = cycle['jobnum']
        import['shift'] = cycle['shift']
        temp = Location.find_by sbuxid: cycle['location']
        import['location_id'] = temp.id unless temp.nil?
        #pp import
        Cycle.create!(import)
      end
  end

  desc 'Import all'
  task all: [:defects, :complaints, :flavors, :locations, :sizes, :cycles]

end

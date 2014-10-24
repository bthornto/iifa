
desc "Import flavors from txt file"
task :import_flavors => [:environment] do

  file = "db/flavors.txt"

  File.open(file).each do |flavor|
    puts flavor
    Flavor.create ({ :name => flavor.strip })
end
end

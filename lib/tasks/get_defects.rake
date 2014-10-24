require 'csv'
require 'pp'
desc "Gets defects"
task :get_defects => [:environment] do
  defect = DefectType.find_by name: 'Fall on the Floor'
  #DefectType.where(first_name: 'Lifo').take
  puts defect.id
  flavor = Flavor.find_by name: 'Lime'
  puts flavor
  pp Cycle.all
end

require 'csv'
require 'pp'
desc "Gets cycles"
task :get_cycles => [:environment] do
  pp Cycle.find(1)
  #pp DefectType.all
end

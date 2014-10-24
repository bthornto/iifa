class DefectType < ActiveRecord::Base
  has_many_and_belongs_to :cycles
end

class DefectType < ActiveRecord::Base
  has_and_belongs_to_many :cycles
end

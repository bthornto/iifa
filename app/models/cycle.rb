class Cycle < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :flavors
  has_and_belongs_to_many :sizes
  has_and_belongs_to_many :defect_types
  has_and_belongs_to_many :locations
end

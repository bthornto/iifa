class Cycle < ActiveRecord::Base
  has_one :user
  has_one :flavor
  has_one :size
  has_many :defect_types
  has_one :location
end

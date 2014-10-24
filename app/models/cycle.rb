class Cycle < ActiveRecord::Base
  belongs_to :user
  belongs_to :flavor
  belongs_to :size
  belongs_to :location
  has_and_belongs_to_many :defect_types
end

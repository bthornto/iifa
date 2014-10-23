class Cycle < ActiveRecord::Base
  belongs_to :user
  belongs_to :flavor
  belongs_to :size
  belongs_to :defect_type
  belongs_to :location
end

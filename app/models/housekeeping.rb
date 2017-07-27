class Housekeeping < ActiveRecord::Base
  has_and_belongs_to_many :log
end

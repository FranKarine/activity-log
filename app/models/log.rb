class Log < ActiveRecord::Base
 has_and_belongs_to_many :extra
 has_and_belongs_to_many :housekeeping
 has_and_belongs_to_many :personalhigiene
end 

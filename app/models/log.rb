class Log < ActiveRecord::Base
 def self.search(search)
    where("client LIKE ?", "%#{search}%")
 end
 has_and_belongs_to_many :extra
 has_and_belongs_to_many :housekeeping
 has_and_belongs_to_many :personalhigiene
 
end 

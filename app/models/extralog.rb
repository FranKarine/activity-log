class Extralog < ActiveRecord::Base
  belongs_to :extra
  belongs_to :log
end

class Extra < ActiveRecord::Base
    has_many :extralogs
    has_many :log
end

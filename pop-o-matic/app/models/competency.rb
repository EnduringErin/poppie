class Competency < ActiveRecord::Base
	validates_presence_of :competency, :european_credit, :level
end

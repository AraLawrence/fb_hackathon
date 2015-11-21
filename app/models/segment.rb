class Segment < ActiveRecord::Base
	belongs_to :loc
	belongs_to :event
end

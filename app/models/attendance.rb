class Attendance < ActiveRecord::Base
  belongs_to :event
  attr_accessible :comment, :locked, :name, :event_id
end

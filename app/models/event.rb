class Event < ActiveRecord::Base
  has_many :attendances
  attr_accessible :capacity, :create_user_name, :deadline, :description, :from_date, :title, :to_date
end

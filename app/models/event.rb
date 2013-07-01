#coding: utf-8
class Event < ActiveRecord::Base
  has_many :attendances
  attr_accessible :location, :capacity, :create_user_name, :deadline, :description, :from_date, :title, :to_date

  acts_as_taggable
  acts_as_taggable_on :free_tags

  validates :title, presence: true
  validates :create_user_name, presence: true
  validates :description, presence: true
  validates :from_date, presence: true
  validates :to_date, presence: true
  validates :location, presence: true

  validate do
    unless self.from_date < self.to_date
      errors.add(:to_date, '前後関係が不正')
    end
  end

  def looking_attendances?
    self.capacity > 0
  end


  class << self
    def search( event_search_condition )
    end
  end
end

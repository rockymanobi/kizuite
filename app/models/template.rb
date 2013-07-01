class Template < ActiveRecord::Base
  attr_accessible :content, :name
  scope :available, ->{ where( "1=1" ) }

end

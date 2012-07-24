class Vote < ActiveRecord::Base
  attr_accessible :value
  
  belongs_to :user
  belongs_to :link
  
  validates_presence_of :value, :user, :link
  
end

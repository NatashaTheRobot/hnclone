class Vote < ActiveRecord::Base
  attr_accessible :value
  
  belongs_to :user
  belongs_to :link
  
  validates_presence_of :value, :user, :link
  validates_uniqueness_of :link_id, :scope => [:user_id]
  
end

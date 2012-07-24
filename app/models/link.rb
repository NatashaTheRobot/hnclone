class Link < ActiveRecord::Base
  attr_accessible :title, :url
  
  belongs_to :user
  has_many :comments
  has_many :votes
  
  validates_uniqueness_of :url
end

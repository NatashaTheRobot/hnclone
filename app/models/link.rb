class Link < ActiveRecord::Base
  attr_accessible :title, :url
  
  belongs_to :user
  has_many :comments
  has_many :votes
  
  before_save :format_url
  
  validates_uniqueness_of :url
  validates_presence_of :title
  
  private
    def format_url
      self.url = 'http://' << self.url unless self.url.include?('http://') or self.url.include?('https://')
    end
end

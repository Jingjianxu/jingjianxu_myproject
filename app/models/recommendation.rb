class Recommendation < ActiveRecord::Base

  validates :dish, :presence => true, :uniqueness => { :scope => :dish }
  validates :price, :numericality => { :only_integer => false, :greater_than => 0, :less_than_or_equal_to => 30, :allow_blank => false }
validates :spicy, :presence => true

validates :image_url, :presence => true
end

class Dessert < ActiveRecord::Base

  validates :dish, :presence => true, :uniqueness => { :scope => :dish }
  validates :price, :numericality => { :only_integer => true, :greater_than => 0, :less_than_or_equal_to => 30, :allow_blank => false }
validates :sweet_or_salty, :presence => true

validates :image_url, :presence => true
end

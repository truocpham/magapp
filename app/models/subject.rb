class Subject < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :categories, :dependent => :destroy

  validates :name, :presence => true, :length => { :maximum => 255 }
end

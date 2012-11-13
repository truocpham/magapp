class Question < ActiveRecord::Base
  attr_accessible :category_id, :content, :mark, :type_question

  belongs_to :category
  has_many :answers, :dependent => :destroy
  has_many :examquestions, :dependent => :destroy
  has_many :exams, :through => :examquestions
  has_many :tmpanswers, :dependent => :destroy
  
  validates :category_id, :presence => true
  validates :content, :presence => true
  validates :mark, :presence => true, :numericality => {:greater_than => 0}
  validates :type_question, :presence => true 

end
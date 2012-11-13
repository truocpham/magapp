class Exam < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :hashid, :on_answer, :o_answer, :m_answer, :q_user, :time_exam
  attr_accessor :on_answer, :o_answer, :m_answer, :q_user

  belongs_to :category
  has_many :examquestions, :dependent => :destroy
  has_many :questions, :through => :examquestions
  has_many :userexams, :dependent => :destroy		

  validates :name, :presence => true
  validates :category_id, :presence => true
  validates :on_answer, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :m_answer, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :o_answer, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :q_user, :presence => true, :numericality => {:only_integer => true, :greater_than => 0}
  validates :time_exam, :presence => true, :numericality => {:only_integer => true, :greater_than => 0}
end

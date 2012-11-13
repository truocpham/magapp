class Userexam < ActiveRecord::Base
  attr_accessible :exam_id, :name, :sum_point, :tmp_point, :time_start, :time_end, :password, :note

  belongs_to :exam
  has_many :tmpanswers, :dependent => :destroy
end

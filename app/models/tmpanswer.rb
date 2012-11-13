class Tmpanswer < ActiveRecord::Base
  attr_accessible :con_answer, :question_id, :userexam_id

  belongs_to :userexam
  belongs_to :question
end

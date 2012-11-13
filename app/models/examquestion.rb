class Examquestion < ActiveRecord::Base
  attr_accessible :exam_id, :question_id

  belongs_to :question
  belongs_to :exam

end

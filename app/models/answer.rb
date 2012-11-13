class Answer < ActiveRecord::Base
  attr_accessor :answer_arr
  attr_accessible :content, :mark_type, :question_id, :answer_arr
  belongs_to :question

  validates :content, :presence => true
  validates :answer_arr, :answer => true
end

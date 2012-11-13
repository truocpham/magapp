class AddTimeExamToExams < ActiveRecord::Migration
  def change
  	add_column :exams, :time_exam, :integer
  end
end

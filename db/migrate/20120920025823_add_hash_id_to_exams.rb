class AddHashIdToExams < ActiveRecord::Migration
  def change
    add_column :exams, :hashid, :string
  end
end

class CreateExamquestions < ActiveRecord::Migration
  def change
    create_table :examquestions do |t|
      t.integer :exam_id
      t.integer :question_id

      t.timestamps
    end
  end
end

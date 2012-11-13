class CreateTmpanswers < ActiveRecord::Migration
  def change
    create_table :tmpanswers do |t|
      t.integer :userexam_id
      t.integer :question_id
      t.string :con_answer

      t.timestamps
    end
  end
end

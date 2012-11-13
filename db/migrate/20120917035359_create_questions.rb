class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.float :mark
      t.string :type_question
      t.integer :category_id

      t.timestamps
    end
  end
end

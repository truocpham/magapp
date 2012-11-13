class CreateUserexams < ActiveRecord::Migration
  def change
    create_table :userexams do |t|
      t.string :name
      t.integer :exam_id
      t.float :tmp_point
      t.float :sum_point

      t.timestamps
    end
  end
end

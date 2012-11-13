class AddColumInUserexam < ActiveRecord::Migration
  def up
  	add_column :userexams, :password, :string
  	add_column :userexams, :time_start, :datetime
  	add_column :userexams, :time_end, :datetime
  	add_column :userexams, :note, :text
  end

  def down
  	remove_column :userexams, :password
  	remove_column :userexams, :time_start
  	remove_column :userexams, :time_end
  	remove_column :userexams, :note
  end
end

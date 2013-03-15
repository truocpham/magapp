class AddLevelColumnToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :level, :integer
  end
end

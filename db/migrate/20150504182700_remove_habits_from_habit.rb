class RemoveHabitsFromHabit < ActiveRecord::Migration
  def change
    remove_column :habits, :habit1, :text
    remove_column :habits, :habit2, :text
    remove_column :habits, :habit3, :text
  end
end

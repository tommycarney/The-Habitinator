class AddAfterTriggerToHabits < ActiveRecord::Migration
  def change
    add_column :habits, :aftertrigger, :text
    add_column :habits, :behavior, :text
  end
end

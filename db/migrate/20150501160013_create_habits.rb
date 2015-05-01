class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.text :habit1
      t.text :habit2
      t.text :habit3

      t.timestamps null: false
    end
  end
end

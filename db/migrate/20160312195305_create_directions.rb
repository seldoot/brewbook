class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.integer :step
      t.text :direction_text
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end

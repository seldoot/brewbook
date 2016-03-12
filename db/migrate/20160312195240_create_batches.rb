class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.date :batch_date
      t.text :general_notes
      t.text :ingredient_changes
      t.text :direction_changes
      t.text :result_notes
      t.integer :rating
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end

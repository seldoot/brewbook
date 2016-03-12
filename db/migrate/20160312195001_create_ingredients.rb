class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.decimal :amount
      t.string :unit
      t.string :recipe_id

      t.timestamps null: false
    end
  end
end

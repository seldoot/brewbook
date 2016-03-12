class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.text :description
      t.string :brew_type
      t.string :string
      t.integer :brewer_id

      t.timestamps null: false
    end
  end
end

class CreateBrewers < ActiveRecord::Migration
  def change
    create_table :brewers do |t|
      t.string :fname
      t.string :lname
      t.text :brewing_interests

      t.timestamps null: false
    end
  end
end

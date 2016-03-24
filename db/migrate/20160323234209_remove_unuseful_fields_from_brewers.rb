class RemoveUnusefulFieldsFromBrewers < ActiveRecord::Migration
  def change
    remove_column :brewers, :lname, :string
    remove_column :brewers, :fname, :string
  end
end

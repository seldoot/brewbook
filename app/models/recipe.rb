class Recipe < ActiveRecord::Base
	has_many :ingredients
	has_many :directions
	has_many :batches
	belongs_to :brewer
end

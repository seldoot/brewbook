class Recipe < ActiveRecord::Base
	has_many [:ingredients :directions :batches]
	belongs_to :brewer
end

class Category < ActiveRecord::Base
	has_many :entry
end

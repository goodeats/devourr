class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :pins, through: :taggings
end

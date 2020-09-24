class Subject < ApplicationRecord
	#has_many :books
	with_options dependent: :destroy do |assoc|
		assoc.has_many :books
	end
end

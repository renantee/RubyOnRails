class Subject < ApplicationRecord
	alias_attribute :subject, :name

	#has_many :books
	with_options dependent: :destroy do |assoc|
		assoc.has_many :books
	end
end

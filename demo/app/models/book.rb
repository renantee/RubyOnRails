class Book < ApplicationRecord
	belongs_to :subject
	#validates_presence_of :title
	#validates_numericality_of :price, :message=>"Error Message"

	validates :title, presence: true
	validates :price, numericality: true

	delegate :id, :name, to: :subject, prefix: :subject
end

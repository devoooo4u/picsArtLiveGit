class Picture < ActiveRecord::Base
	validates_presence_of :Title
	validates_presence_of :Year

	belongs_to :category

	def long_title
		"#{title}-#{year}"
	end
end

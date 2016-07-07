class Category < ActiveRecord::Base
	
	validates_presence_of :Title

	has_many :pictures

end

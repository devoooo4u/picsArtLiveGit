class GalleryController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :load_cat1pics

	def displayCategories
		@categories = Category.all		
		render template: "gallery/gallery", :layout => "master"
	end
	def getPicsByCategory
		@categories = Category.all
		@category = Category.find(params[:id])		
		#redirect_to 'gallery/category'
		render template: "gallery/gallery", :layout => "master" 		
	end
	def load_cat1pics
		@category = Category.first	
	end

end

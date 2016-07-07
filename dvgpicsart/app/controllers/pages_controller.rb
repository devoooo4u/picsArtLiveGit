class PagesController < ApplicationController
	def show
		render template: "pages/about",  :layout => "master"
	end
	def index
		render template: "pages/index"
	end
	def contact
		render template: "pages/contact", :layout => "master"
	end
	def comingsoon
		render template: "pages/comingsoon",  :layout => "master"
	end
end
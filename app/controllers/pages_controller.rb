class PagesController < ApplicationController
	def show
		@str = Star.find(2)
	end
end

class PagesController < ApplicationController
	def show
		@str = Star.first
	end
end

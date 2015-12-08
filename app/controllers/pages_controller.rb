class PagesController < ApplicationController
	def show
		@sun = Star.first
	end
end

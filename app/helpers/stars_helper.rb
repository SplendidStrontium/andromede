module StarsHelper

	def open_file_stars
		begin
			puts 'Looking for the file at'
			f_path ||= "#{Rails.root}/db/src/stars.json"
			puts f_path
			pn = Pathname.new(f_path)
			mysize = pn.size
			if !(mysize > 0) || (pn.directory?)
				raise 'Your file isnt right'
			end 
			puts 'it reads?'
			mydata = pn.read
			parse_stars(mydata)
		rescue => file_read_error
			puts file_read_error.message
		end
	end

	def parse_stars(myjson)
		@jstars_parsed = JSON.parse(myjson)
		hess = @jstars_parsed.collect { |entry| entry['common_name'] }
		puts hess
	end

end

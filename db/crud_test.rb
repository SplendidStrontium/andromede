# JSON to DB, DB to JSON
require 'pathname'
require 'rails'

module Stars_JSON_IO

# fcn defs
def open_file
	begin
		puts 'I have begun to read the file.'
		f_path ||= "#{Rails.root}/db/src/stars.json"
		puts f_path
		myfile_r = IO.sysopen(f_path, "w")
		myfile_o = IO.new(myfile_r,"w")
		myfileparsed = JSON.parse(myfile_o)
		puts myfileparsed


	rescue => file_read_error
		puts 'Yikes, an error?'
		puts file_read_error.message
	end
end

# MAIN
open_file


# NOTES
=begin
+ Pathname.pwd -- returns string of current working directory
=end

end


# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# Try to load processpilot. Tell user to install if they don't have it.
begin
	require 'processpilot/processpilot'
rescue LoadError
	error_string = <<EOF
Oh dear .. it didn't work. To run tests you must install ProcessPilot:

	gem install ProcessPilot

EOF
	puts error_string
	exit
end

# The actual test
describe 'advanced_hello' do
	it "works for a random name" do
		ProcessPilot::pilot('advanced_hello.rb', :force_ruby_process_sync => true, :debug=> true) do |oStdin, iStdout|
		  	puts iStdout.readpartial(100) # => "Enter your name: "
		  	oStdin.write("daVE\n")
		  	puts iStdout.readpartial(100) # => What is your home town?
		  	oStdin.write("vienna\n")
		  	puts "input"
		  	puts iStdout.readpartial(100) # => What country is that in?
		  	oStdin.write("austria\n")
		  	puts output =  iStdout.gets.chomp # => "Hello Boris the newt"
		  	assert_equal output, "Hello Dave! You are from Vienna, AUSTRIA."

		end

	end


end
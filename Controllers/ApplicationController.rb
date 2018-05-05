class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	get '/' do
		'hey cool my server is running'
	end

end
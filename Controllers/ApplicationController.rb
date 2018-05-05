
class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	set :views, File.expand_path('../views', 'index.erb')


	get '/' do
		erb :index
	end

end
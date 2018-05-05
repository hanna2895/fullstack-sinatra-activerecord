
class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'items'
	)

	set :views, File.expand_path('../views', 'index.erb')


	get '/' do
		erb :index
	end

end

class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'item'
	)

	set :views, File.expand_path('../views', 'index.erb')


	get '/' do
		@page_title = 'hello'
		erb :index
	end

end
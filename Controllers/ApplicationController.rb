
class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	enable :sessions

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'item'
	)

	use Rack::MethodOverride
	set :method_override, true

	set :public_dir, '../public'  #File.expand_path('../public', File.dirname('style.css'))
	set :views, File.expand_path('../views', 'index.erb')


	get '/' do
		@page_title = 'hello'
		erb :index
	end

end
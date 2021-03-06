
class ApplicationController < Sinatra::Base

	require'bundler'
	Bundler.require()

	enable :sessions

	set :public_dir, File.expand_path('../public', File.dirname(__FILE__))
	set :views, File.expand_path('../views', File.dirname(__FILE__))

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'item'
	)

	use Rack::MethodOverride
	set :method_override, true

	get '/' do
		@page_title = 'hello'
		erb :index
	end

end
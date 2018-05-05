require 'sinatra/base'

require 'sinatra/activerecord'

# controllers
require './Controllers/ApplicationController'

# route mapping
map ('/') {
	run ApplicationController
}
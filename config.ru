require 'sinatra/base'

# controllers
require './Controllers/ApplicationController'

# route mapping
map ('/') {
	run ApplicationController
}
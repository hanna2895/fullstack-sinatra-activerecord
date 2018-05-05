require 'sinatra/base'

require 'sinatra/activerecord'

# controllers
require './Controllers/ApplicationController'
require './Controllers/ItemController'

# route mapping
map ('/') {
	run ApplicationController
}

map ('/items') {
	run ItemController
}
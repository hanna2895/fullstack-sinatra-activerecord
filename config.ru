require 'sinatra/base'

require 'sinatra/activerecord'

# controllers
require './Controllers/ApplicationController'
require './Controllers/ItemController'

#models
require './models/ItemModel'

# route mapping
map ('/') {
	run ApplicationController
}

map ('/items') {
	run ItemController
}
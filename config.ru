require 'sinatra/base'

require 'sinatra/activerecord'

# controllers
require './Controllers/ApplicationController'
require './Controllers/ItemController'
require './Controllers/UserController'

#models
require './models/ItemModel'
require './models/UserModel'

# route mapping
map ('/') {
	run ApplicationController
}

map ('/items') {
	run ItemController
}

map ('/user') {
	run UserController
}
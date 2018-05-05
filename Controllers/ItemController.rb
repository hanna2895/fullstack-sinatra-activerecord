class ItemController < ApplicationController

	#index route
	get "/" do
		"this is get route in ItemController"
	end

	#add route
	get '/add' do 
		@page_title = "Add Item"
		@action = "/items"
		@method = "POST"
		@placeholder = "Enter your item!"
		@value = ""
		@buttontext = "Add Item"
		erb :add_item
	end

	# create route
	post '/' do
		puts "Here is the params -----------------"
		pp params
		puts "---------------------------"
		'you posted, check your terminal'
	end

end


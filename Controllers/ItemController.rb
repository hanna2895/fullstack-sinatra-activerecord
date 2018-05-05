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
		pp params

		# this is how you add something with ActiveRecord
		@item = Item.new
		@item.title = params[:title]
		@item.user_id = 1 #for now
		@item.save

		@item.to_json
	end

end


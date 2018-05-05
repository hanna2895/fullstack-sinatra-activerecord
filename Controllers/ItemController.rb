class ItemController < ApplicationController

	before do
		if !session[:logged_in]
			session[:message] = "You must be logged in to do that"
			redirect '/user/login'
		end
	end

	#index route
	get "/" do
		@user = User.find session[:user_id]

		@items = @user.items
		# @items.to_json
		@page_title = "Index of Items"
		erb :item_index
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
		@item.user_id = session[:user_id]
		@item.save

		session[:message] = "You added item \##{@item.id}"

		@item.to_json
		redirect '/items'
	end

	# delete route
	delete '/:id' do
		@item = Item.find params[:id]
		@item.destroy

		session[:message] = "You deleted item \##{@item.id}"
		redirect '/items'
	end

	# edit route
	get '/edit/:id' do
		@item = Item.find params[:id]
		@page = "Edit Item#{@item.id}"
		erb :edit_item
	end

	patch '/:id' do
		@items = Item.where(id: params[:id])
		@item = @items[0]

		@item.title = params[:title]
		@item.save

		session[:message] = "You updated item \##{@item.id}"
		redirect '/items'
	end


end


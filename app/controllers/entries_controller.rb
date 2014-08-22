class EntriesController < ApplicationController
	respond_to :json

	def index
		respond_with Entry.all
	end

	def show
		respond_with Entity.find(params[:id])
	end

	def create
		respond_with Entity.create(params[:entry])
	end

	def update
		respond_with Entity.update(params[:id] , params[:entry])
	end

	def destroy
		respond_with Entity.destroy(params[:id])
	end
end

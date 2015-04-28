class AuthorsController < ApplicationController
	
	attr_accessor :name
	
	def index
		@todos = Todo.all
		@authors = Author.all
		render :index
	end

	def create
		@authors = Author.all
		author = params.require(:author).permit(:name, :age, :descrition)
		Author.create(author)
		render :index
	end

	def show
		id = params[:id]
        @author = Author.find(id)
        @author.todos
        render :show
	end

	def destroy
		@author = Author.find(params[:id])
        @author.destroy
        redirect_to authors_path
    end
end

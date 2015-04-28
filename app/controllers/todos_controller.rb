class TodosController < ApplicationController

attr_accessor :description

	def index
		@todos = Todo.all
        @authors = Author.all
		render :index
	end

	def create
		@todos = Todo.all
		todo = params.require(:todo).permit(:description)
		Todo.create(todo)
		render :index
	end


end	


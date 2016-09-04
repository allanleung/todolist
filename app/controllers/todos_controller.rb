class TodosController < ApplicationController

	def index
		@todos = Todo.all

	end

	def new
		@todo = Todo.new 

	end


	def create
		@todo = Todo.create(todo_params)
		# once i make it, go to index
		redirect_to todos_path

	end



	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todos_path
	end

	private 

	def todo_params 
		params.require(:todo).permit(:body, :finished)
	end 

end

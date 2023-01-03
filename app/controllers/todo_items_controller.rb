class TodoItemsController < ApplicationController
    before_action :set_todo_list

def create
    @todo_item = @todo_list.todo_items.create(todo_items_params)
    redirect_to @todo_list
end

#delete functionality
def show        
    @todo_item = @todo_list.todo_items.find(params[:id])
    if @todo_item.destroy
        flash[:success] = "Todo item has been deleted successfully"
    else 
        flash[:error] = "Todo item cannot be deleted, sorry!"
    end
    redirect_to @todo_list
end

private

def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
end

def todo_items_params
    params[:todo_item].permit(:content)
end

end

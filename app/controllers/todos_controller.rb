class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to @todo, notice: 'Todoが正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo, notice: 'Todoが正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_url, notice: 'Todoが正常に削除されました'
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :status)
  end
end

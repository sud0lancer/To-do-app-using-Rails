class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      # tell the mailer to send a mail 10minutes prior to deadline(right now it will deliver instantly)
      NotificationMailer.notify_mail(@todo).deliver_now
      redirect_to @todo, notice: 'Todo was successfully created.' 
    else
      render :new
    end
  end

  
  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      redirect_to @todo, notice: 'Todo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_url, notice: 'Todo was successfully destroyed.'
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :description, :time, :reminder, :email, :status)
    end

end

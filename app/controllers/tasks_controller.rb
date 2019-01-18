class TasksController < ApplicationController
  def new
  end
  def index
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

   def create
  @task = Task.new(task_params)
end

private
def task_params
  params.require(:task).permit(:newtask)
end

end

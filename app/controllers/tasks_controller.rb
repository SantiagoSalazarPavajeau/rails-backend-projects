class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: TaskSerializer.new(tasks)
    end

    def create
        task = Task.create(task_params)
        render json: TaskSerializer.new(task).serialized_json
    end

    def destroy
        task = Task.find(params[:id])
        task.delete
        render json: TaskSerializer.new(task)
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        render json: TaskSerializer.new(task)
    end



    private

    def task_params
        params.require(:task).permit(:description, :project_id, :person_id, :completed )
    end
end

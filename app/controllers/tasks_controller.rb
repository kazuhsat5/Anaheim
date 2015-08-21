class TasksController < ApplicationController
    before_action :set_task, only: [:edit, :update, :destroy]

    layout "default"

    def new
        @task = Task.new
    end

    def edit
        @id = params[:id]
    end

    def create
        @task = Task.new(task_params)
        @task.save

        redirect_to "/"
    end

    def update
        @task.update(task_params)

        redirect_to "/"
    end

    def dstroy
        @task.destroy

        redirect_to "/"
    end

    private

        def set_task
            @task = Task.find(params[:id])
        end

        def task_params
            params.require(:task).permit(:priority, :item, :position, :findDate, :finder, :responder, :isCorrespond)
        end
end

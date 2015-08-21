class TasksController < ApplicationController
    before_action :set_task, only: [:edit, :update, :destroy]

    layout "default"

    def new
        @task = Task.new
        #
    end

    def edit
        #
    end

    def create
        # DBに保存
        @task = Task.new(task_params)
        @task.save

        # トップページにリダイレクト
        redirect_to "/"
    end

    def update
        # DBレコードの更新
        @task.update(task_params)

        # トップページにリダイレクト
        redirect_to "/"
    end

    def dstroy
        # DBレコードの削除
        @task.destroy

        # トップページにリダイレクト
        redirect_to "/"
    end

    private

        # パラメータで渡されたIDのタスクを取得する
        def set_task
            @task = Task.find(params[:id])
        end

        # パラメータ(ハッシュ型)で渡されたタスク情報を取得する
        def task_params
            params.require(:task).permit(:priority, :item, :position, :findDate, :finder, :responder, :isCorrespond)
        end
end

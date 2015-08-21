class TopController < ApplicationController
    layout "default"

    def index
        # 未対応タスクの取得
        @supported = Task.where.not(isCorrespond: 1)

        # 対応済みタスクの取得
        @unsupported = Task.where(isCorrespond: 1)
    end
end

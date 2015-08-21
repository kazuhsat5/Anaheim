class TopController < ApplicationController
    layout "default"

    def index
        @supported   = Task.where.not(isCorrespond: 1).order(priority: :asc)
        @unsupported = Task.where(isCorrespond: 1).order(priority: :asc)
    end
end

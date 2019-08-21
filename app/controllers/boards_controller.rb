class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end
    def create
        Board.create(boards_params)
    end

    private

    def boards_params
        params.require(:board).permit(:name, :title, :body)
    end
end
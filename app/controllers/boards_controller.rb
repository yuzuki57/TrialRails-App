class BoardsController < ApplicationController
    before_action :set_target_board, only: %i[show edit uodate destroy]

    def index
        @boards = Board.page(params[:page])
    end

    def new
        @board = Board.new
    end
    def create
        board = Board.create(boards_params)
        flash[:notice] = "「#{board.title}」の掲示板を作成しました"
        redirect_to board
    end
    def show
        
    end
    def edit
        
    end
    def update
        @board.update(boards_params)

        redirect_to @board
    end
    def destroy
        @board.delete

        redirect_to boards_path, flash: { notice: "「#{@board.title}」の掲示板が削除されました"}
    end

    private

    def boards_params
        params.require(:board).permit(:name, :title, :body)
    end
    def set_target_board
        @board = Board.find(params[:id])
    end
end
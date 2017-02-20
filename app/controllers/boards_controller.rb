class BoardsController < ApplicationController
  def index
  end

  def new
    if session[:user_id] != nil
      @board = Board.new
    else
      redirect_to '/'
    end
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = session[:user_id]
    if @board.save
      redirect_to @board
    else
      @errors = @board.errors.full_messages
      render 'new'
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
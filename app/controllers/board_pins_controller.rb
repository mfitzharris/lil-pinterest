class BoardPinsController < ApplicationController
  def new
    if session[:user_id] == nil
      redirect_to '/'
    else
      @board_pin = BoardPin.new
      @pin = Pin.find(params[:id])
    end
  end

  def create
    @board_pin = BoardPin.new(board_id: params[:board][:id], pin_id: params[:pin_id])
    if @board_pin.save
      redirect_to @board_pin.board
    else
      @errors = @board_pin.errors.full_messages
      render 'new'
    end
  end
end
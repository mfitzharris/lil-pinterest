class PinsController < ApplicationController
  def index
    @pins = Pin.all.reverse
  end

  def new
    if session[:user_id] == nil
      redirect_to '/'
    else
      @pin = Pin.new
    end
  end

  def create
    @pin = Pin.new(pins_params)
    @board = Board.find(params[:board][:id])
    if @pin.save && @board
      @board.pins << @pin
      redirect_to @board
    else
      @errors = @pin.errors.full_messages
      render 'new'
    end
  end

  def show
  end

  private

  def pins_params
    params.require(:pin).permit(:image, :source, :name)
  end
end
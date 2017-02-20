class PinsController < ApplicationController
  def new
    @pin = Pin.new
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
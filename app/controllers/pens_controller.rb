class PensController < ApplicationController
  def index
    @pens = Pen.all
  end

  def show
    @pens = Pen.new
    @pens = Pen.find(param [:id])
  end 

  def create
  end

  def edit
  end 

  def update
  end 

  def destroy
  end

end

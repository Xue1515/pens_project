class PensController < ApplicationController

  def index
    @pens = Pen.all
  end

  def show
    @pens = Pen.new
    @pens = Pen.find(param [:id])
  end 

  def create
   @pens = Pen.all
   @pens = Pen.new(pen_params)
   if @pen.save
    redirect_to pen_path(@pen)
   else
    render :new
   end
#end

  def edit
    @pens.
  end 

  def update
    if pen.update (pen_params)
      redirect_to pen_path(@pen)
   end 

  def destroy
    if @pens.destroy
      redirect_to index
  end

end

private 

class PensController < ApplicationController

   def index
    @pens = Pen.all
   end

   def show
    @pen = Pen.find(params[:id])
   end

   def new
    @pen = Pen.new
   end

   def create
    @pen = Pen.new(pen_params)
    @pen.user = current_user
      if @pen.save!
     redirect_to pen_path(@pen)
      else
      render :new
      end
   end


   def edit
    @pen = Pen.find(params[:id])
   end

   def update
    @pen = Pen.find(params[:id])
    if @pen.update(pen_params)
      redirect_to pen_path(@pen)
    end
   end

   def destroy
    @pen = Pen.find(params[:id])
    if @pen.destroy
      redirect_to pens_path
    end
   end

  private

   def pen_params
    params.require(:pen).permit(:title, :description, :photo)
   end
end

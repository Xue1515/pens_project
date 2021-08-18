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
<<<<<<< HEAD
    if @pen.save
      redirect_to pen_path(@pen)
    else
=======
      if @pen.save!
     redirect_to pen_path(@pen)
      else
>>>>>>> master
      render :new
    end
  end

<<<<<<< HEAD
  def edit
    @pen = Pen.find(params[:id])
  end
=======

   def edit
    @pen = Pen.find(params[:id])
   end
>>>>>>> master

  def update
    @pen = Pen.find(params[:id])
    if @pen.update(pen_params)
      redirect_to pen_path(@pen)
    end
<<<<<<< HEAD
  end

  def destroy
=======
   end

   def destroy
>>>>>>> master
    @pen = Pen.find(params[:id])
    if @pen.destroy
      redirect_to pens_path
    end
<<<<<<< HEAD
  end

  private

  def pen_params
    params.require(:pen).permit(:title, :description)
  end
=======
   end

  private

   def pen_params
    params.require(:pen).permit(:title, :description, :photo)
   end
>>>>>>> master
end

class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

   def show
    
   end

   def new
    @booking = Booking.new
    @pen = Pen.find(params[:pen_id])
   end

   def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @pen = Pen.find(params[:pen_id])
    @booking.pen = @pen
      if @booking.save!
        redirect_to root_path
      else
      render :new
      end
   end

   def edit
  
   end

   def update
   
    end

   def destroy
  
    end
  

  private

   def booking_params
    params.require(:booking).permit(:start_date, :end_date)
   end
end
class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  before_action :set_dance_lesson, only: [:create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    #@booking = current_user.bookings.build(booking_params) -old formula
    @booking.user = current_user
    @booking.dance_lesson = @dance_lesson
    # authorize @booking

    if @booking.save
      redirect_to user_dashboard_path, notice: "your booking is now confirmed"
    else
      redirect_back fallback_location: root_path, alert: "Could not save this booking"
    end
  end

  # def show
  #   @review = @booking.reviews.new

  #   authorize @review

  # end


  def destroy
    @booking.destroy
    redirect_to @booking
  end

  private


  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end

  def set_dance_lesson
    @dance_lesson = DanceLesson.find(params[:dance_lesson_id])
  end

end

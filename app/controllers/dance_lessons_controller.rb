class DanceLessonsController < ApplicationController

  before_action :set_dance_lesson, only: [:show]
  skip_before_action :authenticate_user!, only: :index


  def index
    @dance_lessons = DanceLesson.geocoded

    @markers = @dance_lessons.map do |lesson|
      {
        lat: lesson.latitude,
        lng: lesson.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { dance_lesson: lesson }),
        image_url: helpers.asset_url('shoe.jpeg')

      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @dance_lesson = DanceLesson.new
    # authorize @venue
  end

  def create
    @dance_lesson = DanceLesson.new(dance_lesson_params)
    @dance_lesson.user = current_user
    # authorize @dance_lesson

    if @dance_lesson.save
      redirect_to dance_lessons_path
    else
      render :new
    end
  end


  private

  def set_dance_lesson
    @dance_lesson = DanceLesson.find(params[:id])
  end

  def dance_lesson_params
    params.require(:dance_lesson).permit(:name, :description, :level, :photo, :address)
  end
end




class DanceLessonsController < ApplicationController

  # Authorize every action!
  before_action :set_dance_lesson, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index


  def index
    # @dance_lessons = DanceLesson.geocoded
    @dance_lessons = policy_scope(DanceLesson).geocoded.order(created_at: :desc)
    # policy_scope calls the resolve method in the dancelessons policy

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

  def new # for new + create you need to authorise the dance lesson!
    @dance_lesson = DanceLesson.new
    authorize @dance_lesson
  end

  def create
    @dance_lesson = DanceLesson.new(dance_lesson_params)
    @dance_lesson.user = current_user # a lesson belongs to a user
    authorize @dance_lesson

    if @dance_lesson.save
      redirect_to dance_lessons_path
    else
      render :new
    end
  end

  def edit
    authorize @dance_lesson
  end

  def update
    @dance_lesson.update(dance_lesson_params)
    if @dance_lesson.save
      redirect_to @dance_lesson
    else
      render :edit
    end
  end

  def destroy
    @dance_lesson.destroy
    redirect_to root_path
  end


  private

  def set_dance_lesson
    @dance_lesson = DanceLesson.find(params[:id])
    authorize @dance_lesson
  end

  def dance_lesson_params
    params.require(:dance_lesson).permit(:name, :description, :level, :photo, :address)
  end
end




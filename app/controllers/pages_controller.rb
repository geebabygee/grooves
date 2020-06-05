class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
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

  def profile
    @dance_lesson = DanceLesson.new
    @user = current_user
  end


end

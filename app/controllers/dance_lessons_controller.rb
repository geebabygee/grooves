class DanceLessonsController < ApplicationController

    before_action :set_dance_lesson, only: [:show]

    def index
      @dance_lessons = DanceLesson.geocoded

          @markers = @dance_lessons.map do |lesson|
            {
              lat: lesson.latitude,
              lng: lesson.longitude
            }
      end
    end

    def show
    end


    private

    def set_dance_lesson
      @dance_lesson = DanceLesson.find(params[:id])
    end

    def article_params
      params.require(:dance_lesson).permit(:name, :description, :level, :photo)
    end
end




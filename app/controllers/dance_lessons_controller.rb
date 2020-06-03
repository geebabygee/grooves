class DanceLessonsController < ApplicationController

    before_action :set_dance_lesson, only: [:show]

    def index
      @dance_lessons = DanceLesson.all
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




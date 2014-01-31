class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
      @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to courses_path
  end

  def destroy
    Course.find(params[:id]).destroy!
    redirect_to :back
  end

  private

  def course_params
    params.require(:course).permit(:name)
  end
end

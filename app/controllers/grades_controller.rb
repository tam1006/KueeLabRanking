class GradesController < ApplicationController

  def new
    @grade = Grade.new
  end

  def index
    @grades = Grade.all.order(created_at: 'desc')
  end

  def edit

  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      redirect_to root_path
    else
      render 'grades/new'
    end
  end

  private
    def grade_params
      params.require(:grade).permit(:AA, :A, :B, :C, :D, :E, :F)
    end
end

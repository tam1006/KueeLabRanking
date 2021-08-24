class GradesController < ApplicationController

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def grade_params
      params.require(:grade).permit(:score)
    end
end

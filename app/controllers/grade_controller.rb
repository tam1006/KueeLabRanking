class GradeController < ApplicationController

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
  end

  private
    def grade_params
      params.require(:grade).permit(:score)
    end
end

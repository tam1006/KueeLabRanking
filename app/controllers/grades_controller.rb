class GradesController < ApplicationController

  def new
    @grade = Grade.new
  end

  def index
    @grades = Grade.all.order(created_at: 'desc')
  end

  def edit
    @grade = Grade.find_by(user_id: current_user[:id])
    unless @grade
      redirect_to new_grade_path
    end
  end

  def create
    @grade = Grade.new(grade_params)
    @grade[:user_id] = current_user[:id]
    if @grade.save
      redirect_to root_path
    else
      # flash: { error: @grade.errors.full_messages }
      render new_grade_path
    end
  end

  def update
    @grade = Grade.find_by(user_id: current_user[:id])
    if @grade.update(grade_params)
      redirect_to root_path
    else
      redirect_to edit_grade_path
    end
  end

  private
    def grade_params
      params.require(:grade).permit(:AA, :A, :B, :C, :D, :E, :F)
    end
end

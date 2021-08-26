class GradesController < ApplicationController
  before_action :calcurate_GPA, only: [:create, :update]
  before_action :set_user_id, only: [:create, :update]

  def new
    @grade = Grade.new
  end

  def index
    @grades = Grade.all
  end

  def edit
    @grade = Grade.find_by(user_id: current_user[:id])
    unless @grade
      redirect_to new_grade_path
    end
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      flash[:success] = "入力が完了しました"
      redirect_to root_path
    else
      render new_grade_path
    end
  end

  def update
    @grade = Grade.find_by(user_id: current_user[:id])
    if @grade.update(grade_params)
      flash[:success] = "入力が完了しました"
      redirect_to root_path
    else
      # redirect_to edit_grade_path(@grade[:id]), flash: { error: @grade.errors.full_messages }
      redirect_to edit_grade_path(@grade[:id])
    end
  end

  private
    def grade_params
      params.require(:grade).permit(:AA, :A, :B, :C, :D, :F, :user_id, :GPA)
    end

    def calcurate_GPA
      num_of_lecture = 0
      gp = 0
      params[:grade].each do |g|
        num_of_lecture += g[1].to_i
        if g[0] == 'AA'
          gp += 4.3*g[1].to_i
        elsif g[0] == 'A'
          gp += 4*g[1].to_i
        elsif g[0] == 'B'
          gp += 3*g[1].to_i
        elsif g[0] == 'C'
          gp += 2*g[1].to_i
        elsif g[0] == 'D'
          gp += 1*g[1].to_i
        end
      end
      params[:grade][:GPA] = (gp/num_of_lecture).round(2)
    end

    def set_user_id
      params[:grade][:user_id] = current_user[:id]
    end
end

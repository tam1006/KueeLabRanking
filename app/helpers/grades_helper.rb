module GradesHelper

  def is_registered_grades?
    if user_signed_in?
      @grade = Grade.find_by(user_id: current_user[:id])
    end
  end
end

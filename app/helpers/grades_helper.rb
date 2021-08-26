module GradesHelper

  def is_registered_grades?
    if user_signed_in?
      @grade = Grade.find_by(user_id: current_user[:id])
    end
  end

  def user_name_is?(grade)
    user = User.find_by(id: grade[:user_id])
    if user
      return user[:username]
    end
  end

  def user_lab_is?(grade)
    user = User.find_by(id: grade[:user_id])
    # debugger
    if user
      return user[:lab]
    end
  end
end

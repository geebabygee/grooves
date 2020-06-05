class DanceLessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Anyone can view any dance lesson --> gets called in index
      #scope.where(user: user) #display only dance_lessons from current_user(owner)
      # scope is DanceLesson.all
    end
  end  # [...]

  def create?
    return true
  end

  # def new?  -> new is calling create so don't need both
  #   return true
  # end

  def show?
    true
  end

  def edit?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    # if I am the owner of the dance lesson I can edit
    # user --> current_user
    # record --> dance_lesson I authorised
    record.user == user
  end
end

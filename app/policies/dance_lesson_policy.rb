class DanceLessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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
end

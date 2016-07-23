class StudentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if !user.blank? && (user.admin?)
        scope.all
      else
        scope.where(tutor_id: user)
      end
    end
  end
end

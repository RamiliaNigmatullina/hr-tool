class UserPolicy < ApplicationPolicy
  def hr?
    user.role == "hr"
  end

  def show?
    manage?
  end

  def index?
    manage?
  end

  private

  def manage?
    user.role == "hr" || record == user
  end
end

class AssessmentPolicy < ApplicationPolicy
  def manage?
    hr?
  end

  def create?
    hr?
  end

  def show?
    hr? || record.user == user
  end

  private

  def hr?
    user.role == "hr"
  end
end

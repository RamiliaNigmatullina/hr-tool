class Skill < ActiveRecord::Base
  belongs_to :department

  validates :description, presence: true

  validates :title, :role, :description, presence: true
  validates :title, uniqueness: { scope: %w(department_id role), case_sensitive: false }
  validates :role, inclusion: { in: %w(lead_dev senior_dev middle_dev junior_dev manager designer) }

  enum role: {
    lead_dev: "Lead Developer",
    senior_dev: "Senior Developer",
    middle_dev: "Middle Developer",
    junior_dev: "Junior Developer",
    manager: "Менеджер",
    designer: "Дизайнер",
    hr: "HR"
  }
end

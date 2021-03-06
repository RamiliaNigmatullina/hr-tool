class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, omniauth_providers: [:google_oauth2]

  ROLES = {
    "hr" => "HR",
    "manager" => "Менеджер",
    "lead_dev" => "Lead Developer",
    "senior_dev" => "Senior Developer",
    "middle_dev" => "Middle Developer",
    "junior_dev" => "Junior Developer",
    "designer" => "Дизайнер",
    "employee" => "Сотрудник"
  }.freeze

  belongs_to :department

  has_many :assessments, dependent: :destroy
  has_many :invites, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  validates :full_name, :role, :level, presence: true
  validates :role, inclusion: { in: User::ROLES.keys.map(&:to_s) }
  validates :level, inclusion: 1..5

  scope :sorted, -> { order(full_name: :asc) }

  def hr?
    role == "hr"
  end

  def employee?
    !hr?
  end
end

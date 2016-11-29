class Assessment < ActiveRecord::Base
  belongs_to :user

  has_many :invites, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  validates :user, :date, :role, presence: true

  scope :unarchived, -> { where(deleted_at: nil) }
  scope :sorted_by_date, -> { order(date: :asc) }
end

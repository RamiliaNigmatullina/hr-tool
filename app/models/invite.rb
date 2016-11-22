class Invite < ActiveRecord::Base
  belongs_to :assessment
  belongs_to :user

  has_one :feedback, dependent: :destroy

  validates :user, :assessment, presence: true
end

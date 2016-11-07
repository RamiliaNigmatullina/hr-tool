class Invite < ActiveRecord::Base
  belongs_to :assessment
  belongs_to :user

  validates :user, :assessment, presence: true
end

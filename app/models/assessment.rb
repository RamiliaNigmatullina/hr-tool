class Assessment < ActiveRecord::Base
  belongs_to :user

  has_many :invites, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
end

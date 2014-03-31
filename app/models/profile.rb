class Profile < ActiveRecord::Base

  belongs_to :user

  validates :username, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }

  delegate :username, to: :profile, prefix: true, allow_nil: true

end

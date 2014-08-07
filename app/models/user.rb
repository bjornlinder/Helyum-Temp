class User < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :suggestions, length: { maximum: 255 }
end

class Tweet < ApplicationRecord
  belongs_to :user

  scope :by_username, -> (username) { joins(:user).where('users.username = ?', username) if username.present? }
end

class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 1}, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 8, maximum: 24 }, confirmation: true,
  format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-_=+{};:'",<.>\/?\\|`~\[\]])[\w\d!@#$%^&*()\-_=+{};:'",<.>\/?\\|`~\[\]]{8,}\z/,
  message: "must include at least one lowercase letter, one uppercase letter, one digit, and one special character" }
end

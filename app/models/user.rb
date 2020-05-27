class User < ApplicationRecord
  has_many :updates
  has_and_belongs_to_many :projects
  has_secure_password

  validates :love_datadog, presence: true
  validates :weekend, presence: true
  validates :top_skills, presence: true
  validates :avatar, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :title, presence: true 
  validates :team, presence: true 
  validates :city, presence: true 
  validates :gender, presence: true 
  validates :pronouns, presence: true

  #--Auth validations and limit frontend data exposure -------------

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }
  # validates :password_complexity

  def password_complexity
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!#'@%$&-])/

    errors.add :password, "Complexity requirement not met. Please use at least: 1 uppercase, 1 lowercase, 1 digit and 1 special character(!#'@%$&-)"
  end

  def frontend_data
    {
      id: id,
      username: username,
      created_at: created_at,
      updated_at: updated_at
    }
  end
  # --------------------------------------------



end

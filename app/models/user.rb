class User < ApplicationRecord
  has_many :updates
  has_and_belongs_to_many :projects

  validates :avatar, presence: true
  validates :love_datadog, presence: true
  validates :weekend, presence: true
  validates :top_skills, presence: true
end

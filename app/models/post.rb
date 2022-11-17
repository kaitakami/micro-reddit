class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { in: 5..30 }
  validates :body, presence: true, length: { minimum: 30 }
  validates :user_id, presence: true

  belongs_to :user
end

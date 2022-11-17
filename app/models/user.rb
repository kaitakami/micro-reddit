class User < ApplicationRecord
  validates :username,
            presence: true,
            uniqueness: {
              case_sensitive: false
            },
            length: {
              in: 3..20
            }

  has_many :posts
end

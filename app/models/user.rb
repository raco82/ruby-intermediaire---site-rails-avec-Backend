class User < ApplicationRecord
  validates :name, presence: true,
                   uniqueness: true,
                   format: { with: /\A[a-zA-Z0-9]+\Z/ }
end

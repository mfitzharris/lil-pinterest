class User < ApplicationRecord
  has_secure_password

  validates :email, :name, presence: true
  validates :email, uniqueness: true

  has_many :boards
end

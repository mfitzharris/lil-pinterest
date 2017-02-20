class User < ApplicationRecord
  has_secure_password

  validates :email, :name, presence: true
  validates :email, uniqueness: true

  has_many :boards
  has_many :board_pins, through: :boards, source: :board_pins
  has_many :pins, through: :board_pins, source: :pins
end

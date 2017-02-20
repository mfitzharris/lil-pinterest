class Board < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user
  has_many :board_pins
  has_many :pins, through: :board_pins, source: :pin
end

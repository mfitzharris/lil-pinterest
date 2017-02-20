class BoardPin < ApplicationRecord
  belongs_to :board
  belongs_to :pin
  has_one :user, through: :board, source: :user
end

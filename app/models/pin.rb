class Pin < ApplicationRecord
  has_attached_file :image, styles: {thumb: '100x100>'}
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png"]
  validates_attachment_size :image, less_than: 1.megabytes

  has_many :board_pins
  has_many :boards, through: :board_pins, source: :board
end

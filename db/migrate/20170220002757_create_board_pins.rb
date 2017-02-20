class CreateBoardPins < ActiveRecord::Migration[5.0]
  def change
    create_table :board_pins do |t|
      t.integer :board_id
      t.integer :pin_id

      t.timestamps
    end
  end
end

class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :name
      t.attachment :image
      t.string :source

      t.timestamps
    end
  end
end

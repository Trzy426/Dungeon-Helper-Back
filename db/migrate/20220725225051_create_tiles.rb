class CreateTiles < ActiveRecord::Migration[7.0]
  def change
    create_table :tiles do |t|
      t.text :description
      t.integer :q_coordinate
      t.integer :r_coordinate

      t.timestamps
    end
  end
end

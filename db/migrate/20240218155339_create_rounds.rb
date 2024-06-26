class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.string :number
      t.string :name
      t.datetime :draw_at
      t.integer :size
      t.string :minister
      t.integer :crs
      t.datetime :tie_breaking_at

      t.timestamps
    end
    add_index :rounds, :number
  end
end

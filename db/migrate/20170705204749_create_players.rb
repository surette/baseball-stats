class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.float :avg
      t.float :hr
      t.float :rbi
      t.float :runs
      t.float :sb
      t.float :ops

      t.timestamps
    end
  end
end

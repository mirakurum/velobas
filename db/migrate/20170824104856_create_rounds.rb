class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.datetime :start
      t.datetime :end
      t.string   :place

      t.timestamps
    end
  end
end

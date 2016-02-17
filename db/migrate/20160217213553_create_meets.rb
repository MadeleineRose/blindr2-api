class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.datetime :time
      t.string :location

      t.timestamps null: false
    end
  end
end

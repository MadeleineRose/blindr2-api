class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :user_id
      t.string :match_id

      t.timestamps null: false
    end
  end
end

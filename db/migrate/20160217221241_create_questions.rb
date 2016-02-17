class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.string :prompt
      t.string :answer

      t.timestamps null: false
    end
  end
end

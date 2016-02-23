class AddanswerstoMatch < ActiveRecord::Migration
  def change
    add_column :matches, :answers, :string
  end
end

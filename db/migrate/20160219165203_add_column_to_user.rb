class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :authenticate_token, :string , index: true
    change_column :users, :email, :string, index: true
  end
end

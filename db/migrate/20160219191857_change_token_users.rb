class ChangeTokenUsers < ActiveRecord::Migration
  def change
    rename_column :users, :authenticate_token, :authentication_token
  end
end

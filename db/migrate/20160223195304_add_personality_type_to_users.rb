class AddPersonalityTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_type, :string
  end
end

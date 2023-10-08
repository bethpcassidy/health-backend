class AddBoolsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :patient, :boolean
    add_column :users, :doctor, :boolean
    add_column :users, :admin, :boolean
  end
end

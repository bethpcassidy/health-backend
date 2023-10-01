class ChangeNameToLowercase < ActiveRecord::Migration[7.0]
  def change
    rename_column :doctors, :Name, :name
    rename_column :patients, :Name, :name
  end
end

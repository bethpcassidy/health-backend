class AddPhoneToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :phone_number, :string
  end
end

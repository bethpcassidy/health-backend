class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :headline
      t.string :message
      t.boolean :approved
      t.string :date

      t.timestamps
    end
  end
end

class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :company
      t.date :date
      t.integer :salary
      t.text :benefits
      t.integer :working_hours_daily
      t.boolean :flex_hours
      t.integer :number_interviews
      t.string :status

      t.timestamps
    end
  end
end

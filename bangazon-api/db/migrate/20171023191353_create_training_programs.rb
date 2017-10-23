class CreateTrainingPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :training_programs do |t|
      t.date :start_date
      t.date :end_date
      t.text :subject
      t.integer :max_occupancy

      t.timestamps
    end
  end
end

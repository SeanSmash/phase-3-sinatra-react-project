class CreatePersonalRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_records do |t|
      t.integer :user_profile_id
      t.integer :exercise_id
      t.string :exercise
      t.string :metric
      t.date :date_created
    end
  end
end

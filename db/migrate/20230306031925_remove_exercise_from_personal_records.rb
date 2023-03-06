class RemoveExerciseFromPersonalRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :personal_records, :exercise
  end
end

class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :exercise
      t.boolean :for_reps
      t.boolean :for_time
      t.boolean :for_weight
    end
  end
end

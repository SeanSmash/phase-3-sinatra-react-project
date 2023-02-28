class CreateExerciseCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_categories do |t|
      t.integer :category_id
      t.integer :exercise_id
    end
  end
end

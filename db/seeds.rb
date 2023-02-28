puts "🌱 Seeding spices..."

# Seed your database here

Exercise.create([
    {exercise: "Bench Press", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "Deadlift", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "Squat", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "Pull-ups", for_reps: "true", for_time: "false", for_weight: "false"},
    {exercise: "Push-ups", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "Sit-ups", for_reps: "true", for_time: "false", for_weight: "false"},
    {exercise: "1-mile run", for_reps: "false", for_time: "true", for_weight: "false"},
    {exercise: "2-mile run", for_reps: "true", for_time: "false", for_weight: "false"}
])

Category.create([
    {category: "Bodyweight"},
    {category: "Barbell"},
    {category: "Cardio"},
    {category: "Upper body"},
    {category: "Lower body"},
    {category: "Full body"},
    {category: "Core"}
])

ExerciseCategory.create([
    {category_id: 1, exercise_id: 4},
    {category_id: 1, exercise_id: 5},
    {category_id: 1, exercise_id: 6},
    {category_id: 2, exercise_id: 1},
    {category_id: 2, exercise_id: 2},
    {category_id: 2, exercise_id: 3},
    {category_id: 3, exercise_id: 7},
    {category_id: 3, exercise_id: 8},
    {category_id: 4, exercise_id: 1},
    {category_id: 4, exercise_id: 4},
    {category_id: 5, exercise_id: 3},
    {category_id: 6, exercise_id: 2},
    {category_id: 7, exercise_id: 6}
])

UserProfile.create([
    {}
])

puts "✅ Done seeding!"

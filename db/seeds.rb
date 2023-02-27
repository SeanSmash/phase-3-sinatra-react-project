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

puts "✅ Done seeding!"

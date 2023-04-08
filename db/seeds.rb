puts "🌱 Seeding spices..."

# Seed your database here

Exercise.create([
    {exercise: "bench press", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "deadlift", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "squat", for_reps: "false", for_time: "false", for_weight: "true"},
    {exercise: "pull-ups", for_reps: "true", for_time: "false", for_weight: "false"},
    {exercise: "push-ups", for_reps: "true", for_time: "false", for_weight: "false"},
    {exercise: "sit-ups", for_reps: "true", for_time: "false", for_weight: "false"},
    {exercise: "1-mile run", for_reps: "false", for_time: "true", for_weight: "false"},
    {exercise: "2-mile run", for_reps: "false", for_time: "true", for_weight: "false"}
])

Category.create([
    {category: "bodyweight"},
    {category: "barbell"},
    {category: "cardio"},
    {category: "upper body"},
    {category: "lower body"},
    {category: "full body"},
    {category: "core"},
    {category: "dumbbell"},
    {category: "olympic"}
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
    {category_id: 4, exercise_id: 5},
    {category_id: 5, exercise_id: 3},
    {category_id: 6, exercise_id: 2},
    {category_id: 7, exercise_id: 6}
])

UserProfile.create([
    {user_name: "Joe_Test", first_name: "Joe", last_name: "Test", birthdate: "19900101", gender: "Male"},
    {user_name: "Jane_Test", first_name: "Jane", last_name: "Test", birthdate: "20000101", gender: "Female"}
])

PersonalRecord.create([
    {user_profile_id: 1, exercise_id: 1, metric: 275, date_created: "20230228"},
    {user_profile_id: 1, exercise_id: 1, metric: 265, date_created: "20230103"},
    {user_profile_id: 1, exercise_id: 2, metric: 375, date_created: "20230115"},
    {user_profile_id: 1, exercise_id: 2, metric: 355, date_created: "20221115"},
    {user_profile_id: 1, exercise_id: 3, metric: 315, date_created: "20221220"},
    {user_profile_id: 1, exercise_id: 3, metric: 310, date_created: "20221125"},
    {user_profile_id: 1, exercise_id: 4, metric: 15, date_created: "20220801"},
    {user_profile_id: 1, exercise_id: 4, metric: 13, date_created: "20220602"},
    {user_profile_id: 1, exercise_id: 5, metric: 50, date_created: "20230110"},
    {user_profile_id: 1, exercise_id: 5, metric: 42, date_created: "20221010"},
    {user_profile_id: 1, exercise_id: 6, metric: 60, date_created: "20221001"},
    {user_profile_id: 1, exercise_id: 6, metric: 67, date_created: "20230201"},
    {user_profile_id: 1, exercise_id: 7, metric: 477, date_created: "20221118"},
    {user_profile_id: 1, exercise_id: 7, metric: 490, date_created: "20220717"},
    {user_profile_id: 1, exercise_id: 8, metric: 1002, date_created: "20230102"},
    {user_profile_id: 1, exercise_id: 8, metric: 1050, date_created: "20220204"},
    {user_profile_id: 2, exercise_id: 1, metric: 115, date_created: "20230228"},
    {user_profile_id: 2, exercise_id: 1, metric: 105, date_created: "20230103"},
    {user_profile_id: 2, exercise_id: 2, metric: 155, date_created: "20230115"},
    {user_profile_id: 2, exercise_id: 2, metric: 135, date_created: "20221115"},
    {user_profile_id: 2, exercise_id: 3, metric: 175, date_created: "20221220"},
    {user_profile_id: 2, exercise_id: 3, metric: 155, date_created: "20221125"},
    {user_profile_id: 2, exercise_id: 4, metric: 8, date_created: "20220801"},
    {user_profile_id: 2, exercise_id: 4, metric: 5, date_created: "20220602"},
    {user_profile_id: 2, exercise_id: 5, metric: 30, date_created: "20230110"},
    {user_profile_id: 2, exercise_id: 5, metric: 23, date_created: "20221010"},
    {user_profile_id: 2, exercise_id: 6, metric: 50, date_created: "20230201"},
    {user_profile_id: 2, exercise_id: 6, metric: 44, date_created: "20221001"},
    {user_profile_id: 2, exercise_id: 7, metric: 509, date_created: "20221118"},
    {user_profile_id: 2, exercise_id: 7, metric: 547, date_created: "20220717"},
    {user_profile_id: 2, exercise_id: 8, metric: 1102, date_created: "20230102"},
    {user_profile_id: 2, exercise_id: 8, metric: 1200, date_created: "20220204"}
])

puts "✅ Done seeding!"

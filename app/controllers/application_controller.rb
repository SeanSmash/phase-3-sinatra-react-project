require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/exercises" do
    exercises = Exercise.all 
    exercises.to_json
  end

  post '/exercises' do
    exercise = Exercise.create(
      exercise: params[:exercise],
      for_reps: params[:for_reps],
      for_time: params[:for_time],
      for_weight: params[:for_weight]
    )
    exercise.to_json
  end

  get "/exercises/:id" do
    exercise = Exercise.find(params[:id])
    exercise.to_json
  end

  get "/exercises/:id/categories" do
    exercise = Exercise.find(params[:id])
    exercise.categories.all.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

  post "/categories" do
    category = Category.create(
      category: params[:category]
    )
    category.to_json
  end

  get "/exercise_categories" do
    exercise_categories = ExerciseCategory.all
    exercise_categories.to_json
  end
  
  post '/exercise_categories' do
    exercise_category = ExerciseCategory.create(
      category_id: params[:category_id],
      exercise_id: params[:exercise_id]
    )
    exercise_category.to_json
  end

  get "/user_profiles" do
    user_profiles = UserProfile.all
    user_profiles.to_json
  end

  get "/personal_records/:id" do
    user = UserProfile.find(params[:id])
    userRecords = user.personal_records.order(date_created: :desc).to_json
  end

  post '/personal_records' do
    personal_record = PersonalRecord.create(
      user_profile_id: params[:user_profile_id],
      exercise_id: params[:exercise_id],
      metric: params[:metric],
      date_created: params[:date_created]
    )
    personal_record.to_json
  end

  patch '/personal_records/:id' do
    personal_record = PersonalRecord.find(params[:id])
    personal_record.update(
      metric: params[:metric],
      date_created: params[:date_created]
    )
    personal_record.to_json
  end

  delete '/personal_records/:id' do
    personal_record = PersonalRecord.find(params[:id])
    personal_record.destroy
    personal_record.to_json
  end

end

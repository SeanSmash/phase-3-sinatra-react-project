require 'pry'

class Exercise < ActiveRecord::Base
    has_many :exercise_categories
    has_many :categories, through: :exercise_categories
    
end


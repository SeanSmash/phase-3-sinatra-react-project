class ChangeUserProfilesBirthdateToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :user_profiles, :birthdate, :datetime 
  end
end

class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :gender
    end
  end
end

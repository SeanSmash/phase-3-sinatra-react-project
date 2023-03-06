class ChangePersonalRecordsDateCreatedToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :personal_records, :date_created, :datetime 
  end
end

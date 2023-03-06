class ChangeColumnDateCreatedInPersonalRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :personal_records, :date_created
    add_column :personal_records, :date_created, :timestamps 
  end
end

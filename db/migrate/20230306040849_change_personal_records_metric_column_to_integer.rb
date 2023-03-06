class ChangePersonalRecordsMetricColumnToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :personal_records, :metric, :integer 
  end
end

class CreateJoinTableHousekeepingLogs < ActiveRecord::Migration
  def change
    create_join_table :housekeepings, :logs do |t|
      # t.index [:housekeeping_id, :log_id]
      # t.index [:log_id, :housekeeping_id]
    end
  end
end

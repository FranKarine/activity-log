class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :client
      t.string :carg_name
      t.string :data
      t.string :f_time
      t.string :s_time
      t.string :fd_breaktime
      t.string :am_snack
      t.string :fd_lunch
      t.string :pm_snack
      t.string :dinner
      t.string :ngt_nack
      t.string :med_breaktime
      t.string :med_lunch
      t.string :med_eventime
      t.string :med_ngtime
      t.string :imp_info
      t.string :desc
      t.references :extra, index: true, foreign_key: true
      t.references :housekeeping, index: true, foreign_key: true
      t.references :personalhigiene, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

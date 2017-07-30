class CreateJoinTableExtrasLog < ActiveRecord::Migration
  def change
    create_join_table :extras, :logs do |t|
      # t.index [:extra_id, :log_id]
      # t.index [:log_id, :extra_id]
    end
  end
end

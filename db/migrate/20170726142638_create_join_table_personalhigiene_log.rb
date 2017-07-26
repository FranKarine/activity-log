class CreateJoinTablePersonalhigieneLog < ActiveRecord::Migration
  def change
    create_join_table :personalhigienes, :logs do |t|
      # t.index [:personalhigiene_id, :log_id]
      # t.index [:log_id, :personalhigiene_id]
    end
  end
end

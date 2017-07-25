class CreatePersonalhigienes < ActiveRecord::Migration
  def change
    create_table :personalhigienes do |t|
      t.string :descrpition

      t.timestamps null: false
    end
  end
end

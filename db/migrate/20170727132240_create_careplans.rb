class CreateCareplans < ActiveRecord::Migration
  def change
    create_table :careplans do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end

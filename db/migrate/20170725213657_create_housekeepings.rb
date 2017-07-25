class CreateHousekeepings < ActiveRecord::Migration
  def change
    create_table :housekeepings do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end

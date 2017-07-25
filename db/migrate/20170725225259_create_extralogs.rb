class CreateExtralogs < ActiveRecord::Migration
  def change
    create_table :extralogs do |t|
      t.references :extra, index: true, foreign_key: true
      t.references :log, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

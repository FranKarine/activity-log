class AddCareplanToClients < ActiveRecord::Migration
  def change
    add_column :clients, :careplan, :string
  end
end

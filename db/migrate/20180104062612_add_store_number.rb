class AddStoreNumber < ActiveRecord::Migration
  def change
    add_column :users, :store_number, :string
  end
end

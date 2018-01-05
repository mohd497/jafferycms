class AddFileToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :file, :string
  end
end

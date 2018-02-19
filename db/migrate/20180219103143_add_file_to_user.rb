class AddFileToUser < ActiveRecord::Migration
  def change
    add_column :useradmins, :level, :integer
  end
end

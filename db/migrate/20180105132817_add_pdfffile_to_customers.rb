class AddPdfffileToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :pdffile, :string
  end
end

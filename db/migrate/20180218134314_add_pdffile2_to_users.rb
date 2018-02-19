class AddPdffile2ToUsers < ActiveRecord::Migration
  def change
    add_column :customers, :pdffile2, :string
    add_column :customers, :pdffile3, :string
    add_column :customers, :pdffile4, :string
    add_column :customers, :pdffile5, :string
    add_column :customers, :pdffile6, :string
    add_column :customers, :pdffile7, :string
    add_column :customers, :pdffile8, :string
    add_column :customers, :pdffile9, :string
    add_column :customers, :pdffile10, :string
  end
end

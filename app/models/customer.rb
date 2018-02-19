class Customer < ActiveRecord::Base

  mount_uploader :pdffile, FileUploader
  mount_uploader :pdffile2, File2Uploader
  mount_uploader :pdffile3, File3Uploader
  mount_uploader :pdffile4, File4Uploader
  mount_uploader :pdffile5, File5Uploader
  mount_uploader :pdffile6, File6Uploader
  mount_uploader :pdffile7, File7Uploader
  mount_uploader :pdffile8, File8Uploader
  mount_uploader :pdffile9, File9Uploader
  mount_uploader :pdffile10, File10Uploader

end

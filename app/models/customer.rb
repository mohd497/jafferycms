class Customer < ActiveRecord::Base

  mount_uploader :pdffile, FileUploader

end

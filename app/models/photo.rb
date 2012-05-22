class Photo < ActiveRecord::Base
  # allows read/write operations on the following fields
  attr_accessible :caption, :file

  # enables CarrierWave gem to upload file from HTTP headers and store file in db field
  mount_uploader :file, EliUploader

end

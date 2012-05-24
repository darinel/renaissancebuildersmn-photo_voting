class Photo < ActiveRecord::Base
  # allows read/write operations on the following fields
  attr_accessible :caption, :file, :week_int, :place_order

  # enables CarrierWave gem to upload file from HTTP headers and store file in db field
  mount_uploader :file, EliUploader

  # returns week number and week description. 
  # For example, "1 - Choose Layout"
  def weeks_array
  	Week.all.map { |w| [w.week_number.to_s + " - " + w.name.to_s, w.week_number] }
  end


end

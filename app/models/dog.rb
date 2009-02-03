class Dog < ActiveRecord::Base
  has_many :uploads, :attributes => true, :discard_if => proc { |upload| upload.photo_file_size.nil? }
end

module ProgImageManager
  class ImageProcessor < ActiveRecord::Base
    validates :format, inclusion: { in: %w(jpeg gif tiff png jpg gif),
      allow_blank: true, message: "%{value} is not a valid format" }
  end
end    


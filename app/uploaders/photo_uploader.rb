class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # include CarrierWave::MiniMagick

  # process convert: 'jpeg'
  # process resize_to_limit: [400, 280]

  version :full do
    eager
    resize_to_fit(800, 600)
    cloudinary_transformation quality: 100
  end

  version :standard do
    eager
    resize_to_fit(400, 300)
    cloudinary_transformation quality: 100
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end
end

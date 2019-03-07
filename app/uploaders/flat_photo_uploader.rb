class FlatPhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end

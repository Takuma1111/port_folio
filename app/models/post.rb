class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :sound, ImageUploader
  mount_uploader :video, ImageUploader
end

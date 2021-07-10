class Page < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :imagetwo, ImageUploader
	mount_uploader :imagethree, ImageUploader
	has_many :comments
	validates :text, presence: true
	
end

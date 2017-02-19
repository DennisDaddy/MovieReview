class Movie < ApplicationRecord
	belongs_to :user
	has_many :reviews
	mount_uploader :picture, PictureUploader
	validate :picture_size

	# Validates the size of an uploaded picture.
	def picture_size
	if picture.size > 5.megabytes
	errors.add(:picture, "should be less than 5MB")
	end
	end

end

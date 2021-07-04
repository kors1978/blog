class Comment < ApplicationRecord
	belong_to :page
	validates :author, presence: true
end

class Comment < ApplicationRecord
	belongs_to :page
	validates :author, :body, presence: true
end

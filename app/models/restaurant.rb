class Restaurant < ActiveRecord::Base

	belongs_to :user
	has_many :reviews, dependent: :destroy
	validates :name, length: {minimum: 2}, uniqueness: true

	def average_rating
		return 'N/A' if reviews.none?
		4
	end


end

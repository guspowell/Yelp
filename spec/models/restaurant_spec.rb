require 'rails_helper'

describe Restaurant, :type => :model do 

	it 'is not valid with a name of less than 2 characters' do
		restaurant = Restaurant.new(name: "k")
		expect(restaurant).to have(1).error_on(:name)
		expect(restaurant).not_to be_valid
	end

end

describe '#average_rating' do

	context 'no reviews' do

		it 'returns "N/A" when there are no reviews' do
			restaurant = Restaurant.create(name: 'The Ivy')
			expect(restaurant.average_rating).to eq 'N/A'
		end

	end

	context '1 reviews' do

		it 'returns that rating' do
			restaurant = Restaurant.create(name: 'The Ivy')
			restaurant.reviews.create(rating: 4)
			expect(restaurant.average_rating).to eq 4
		end
	end
end
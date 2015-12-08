require 'rails_helper'

describe Product do
	before do
      @product = Product.create!(name: "race bike")
    end

    @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")

	it "returns the average rating of all comments" do

	end

end
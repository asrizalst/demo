require 'rails_helper'

describe Product do
	before do
      @product = Product.create!(name: "race bike")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
    end

    

	it "returns the average rating of all comments" do

	end

end
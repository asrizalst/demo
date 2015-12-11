require 'rails_helper'
require 'support/factory_girl'

describe Product do
	context 'when the product has comments' do
		before do
			@product = create!(:product)
			comment1 = create!(:comment, product:@product, rating:1)
			comment2 = create!(:comment, product:@product, rating:3)
			comment3 = create!(:comment, product:@product, rating:5)
		end

		it 'returns the average rating of all comments' do
			expect(@product.average_rating).to eq 3
		end
	end

	context "when a product doesn't have a name defined" do
		before do 
			@product = Product.create!(:description => "raund",:image_url => "htppspf", :colour => "black", :price => 100)
		end
		it "shouldn't be valid and won't be created" do
			expect(@product).not_to be_valid
		end
	end

end
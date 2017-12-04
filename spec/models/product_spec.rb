require 'rails_helper'

describe Product do

  before do
    @product = Product.create(name: "Race Bike", description: "nice", color: "red", price: 99)
    @user = User.create(first_name: "Ionut", last_name: "Zbarnea", email: "user@gmail.com", password: "test123")
    @product.comments.create(rating: 1, user: @user, body: "Awlful bike!")
    @product.comments.create(rating: 3, user: @user, body: "This is a great bike!")
    @product.comments.create(rating: 5, user: @user, body: "This product is fantastic")
  end

  it "returns the average rating of the comments" do
    expect(@product.average_rating).to eq 3
  end
end

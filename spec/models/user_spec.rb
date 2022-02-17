require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    password_fake = Faker::Internet.password(min_length: 8)
    expect(
      User.new(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: password_fake, password_confirmation: password_fake)
    ).to be_valid
  end

  # it "is not valid without a title" do
  #   user = User.new(username: nil)
  #   expect(user).to_not be_valid
  # end
end

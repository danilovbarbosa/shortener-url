require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    password_fake = Faker::Internet.password(min_length: 8)
    # user = User.new(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: password_fake, password_confirmation: password_fake)
    user = build(:user)
    expect(
      user
    ).to be_valid
  end

  it "is not valid without a name" do
    password_fake = Faker::Internet.password(min_length: 8)
    user = User.new(name: nil, username: Faker::Internet.username, email: Faker::Internet.email, password: password_fake, password_confirmation: password_fake)
    expect(user).to_not be_valid
  end

  it "is not valid without a username" do
    password_fake = Faker::Internet.password(min_length: 8)
    user = User.new(name: Faker::Name.name, username: nil, email: Faker::Internet.email, password: password_fake, password_confirmation: password_fake)
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    password_fake = Faker::Internet.password(min_length: 8)
    user = User.new(name: Faker::Name.name, username: Faker::Internet.username, email: nil, password: password_fake, password_confirmation: password_fake)
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    password_fake = Faker::Internet.password(min_length: 8)
    user = User.new(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: nil, password_confirmation: password_fake)
    expect(user).to_not be_valid
  end
end

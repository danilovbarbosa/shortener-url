require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
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

  it { is_expected.to have_many(:shortened_urls) }

  it "is eq the url" do
    user = create(:user)
    link = Shortener::ShortenedUrl.generate(Faker::Internet.url, owner: user)

    expect(
      user.shortened_urls.first.url
    ).to eq(link.url)
    expect(user.shortened_urls.size).to be 1
  end


end

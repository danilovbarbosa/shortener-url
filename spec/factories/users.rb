password_fake = Faker::Internet.password(min_length: 8)
FactoryBot.define do
    factory :user do
      name { Faker::Name.name }
      username  { Faker::Internet.username }
      email { Faker::Internet.email }
      password { password_fake }
      password_confirmation { password_fake }
    end
  end

  # User.new(name: , username: e, email: , password: password_fake, password_confirmation: password_fake)

# ENV['PASSWORD_SEED']
user1 = User.create!({name: Faker::Name.name, username: Faker::Internet.username, email: ENV['EMAIL_SEED'], password: ENV['PASSWORD_SEED'], password_confirmation: ENV['PASSWORD_SEED'] })
Shortener::ShortenedUrl.generate("https://olist.com/pt-br/", owner: user1)
Shortener::ShortenedUrl.generate("https://olistpax.com.br/", owner: user1)
Shortener::ShortenedUrl.generate("https://www.tiny.com.br/", owner: user1)
Shortener::ShortenedUrl.generate("https://www.vnda.com.br/", owner: user1)
#user 2
password_fake = Faker::Internet.password(min_length: 8)
user2 = User.create!({name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: password_fake, password_confirmation: password_fake })
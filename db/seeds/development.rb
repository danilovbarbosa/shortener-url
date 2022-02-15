# ENV['PASSWORD_SEED']
user1 = User.create!({email: ENV['EMAIL_SEED'], password: ENV['PASSWORD_SEED'], password_confirmation: ENV['PASSWORD_SEED'] })
Shortener::ShortenedUrl.generate("https://olist.com/pt-br/", owner: user1)
Shortener::ShortenedUrl.generate("https://olistpax.com.br/", owner: user1)
Shortener::ShortenedUrl.generate("https://www.tiny.com.br/", owner: user1)
Shortener::ShortenedUrl.generate("https://www.vnda.com.br/", owner: user1)
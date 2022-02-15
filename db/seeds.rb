# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Run code in path db/seeds
ActiveRecord::Base.transaction do
    ['common', Rails.env].each do |seed|
      file = "#{Rails.root}/db/seeds/#{seed}.rb"
      if File.exists?(file)
        puts "Not finding nd the file: #{file}"
        require file
      end
    end
  end
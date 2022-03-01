require "faker"

Article.delete_all
User.delete_all

User.create(email:"a@a.com", password:"123456")

30.times do |i|
  Article.create(title:Faker::Games::SuperMario.character, content: Faker::Games::SuperMario.game, user: User.first)
end
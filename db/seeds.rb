require "faker"

Article.delete_all

30.times do |i|
  Article.create(title:Faker::Games::SuperMario.character, content: Faker::Games::SuperMario.game, user: User.first)
end
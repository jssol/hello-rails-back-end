require 'faker'

10.times do
  Message.create(content: Faker::Quote.yoda)
end

10.times do
  Message.create(content: Faker::Quote.famous_last_words)
end

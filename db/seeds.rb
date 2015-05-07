# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  @user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
  5.times do
    question = Question.create(content: Faker::Lorem.sentence)
    question.answers << Answer.create(content: Faker::Lorem.sentence)
    @user.questions << question
  end
end
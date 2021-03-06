# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Eatery.create(name: "七福軒", address: "茨城県つくば市天久保1-6-14", tel: "029-893-4799",
              holiday: "日曜日・第一月曜日",time:"11:00～14:00 18:00～")
Eatery.create(name: "むじゃき", address: "茨城県つくば市天久保2-10-19", tel: "029-896-8988",
              holiday: "不定休",time:"11:30～14:30 18:00～22:00")
Eatery.create(name: "俺の生きる道", address: "茨城県つくば市天久保2-10-19", tel: "029-896-8988",
              holiday: "不定休",time:"11:30～13:30 17:30～21:00")
Eatery.create(name: "逆流", address: "茨城県つくば市小田4687-1", tel: "029-896-8988",
              holiday: "月曜日",time:"11:30～14:30 18:00～22:00")
Poem.create(name:"タラちゃん", poem: "むしさんと遊んだですぅ", score: 2)
Poem.create(name:"タラちゃん", poem: "いかりにふるえているですぅ", score: 60)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "maru",
             email: "maruta@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

# リレーションシップ
# users = User.all
# user  = users.first
# following = users[0]
# followers = users[1]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }

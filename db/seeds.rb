# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(:email => 'admin@gmail.com', :password => 'master', :nickname => '관리자')
admin.add_role :admin
admin.save

user = User.create(email: 'user@gmail.com', password: 'hihihi', :nickname => '사용자')
#아마 after_create 에서 자동으로 user권한을 추가 시킬 겁니다!
user.save

#5.times do
    Post.create(
        title: Faker::Name.first_name, 
       content: Faker::Lorem.paragraph,
        user: admin)
  # Post.create(
  #      title: Faker::Name.first_name, 
   #     content: Faker::Lorem.paragraph,
  #     user: user)

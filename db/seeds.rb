# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :email => 'cecep@41studio.com', :password =>'11111111', :name => 'cecep', :password_confirmation => '11111111'
# puts 'user: ' << user.email
# user.confirm!

50.times do |n|
  Article.create(:title => 'My article title', :user_id => 7, :state => 1, :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, Lorem ipsum dolor sit amet, consectetur adipisicing elit, Lorem ipsum dolor sit amet, consectetur adipisicing elit, Lorem ipsum dolor sit amet, consectetur adipisicing elit')
end

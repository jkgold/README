require 'faker'
# Create Users
5.times do 
	user = User.new(
		name:      Faker::Name.name,
		email:     Faker::Internet.email,
		password:  Faker::Lorem.characters(10)
	)

	user.skip_confirmation!
	user.save!
end
users = User.all 

#Note: by calling "User.new" instead of 'create',
#we create an instance of User which isn't immedialtely saved to the database.


# The 'skip_confirmation!' method sets the 'confirmed_at' attribute
# to avoid triggering a confrimation email when the User is saved.

# The 'save' method then saves this User to the database.

50.times do 
	Post.create!(
		user:  users.sample,
		title: Faker::Lorem.sentence,
		body:  Faker::Lorem.paragraph
		)
end

post =Post.all

100.times do
	Comment.create!(
		# user: users.sample,  #we have not associated Users with Comments
		post: post.sample,
		body: Faker::Lorem.paragraph

		)




user = User.first
user.skip_reconfirmation!
user.update_attributes!(
	email:    'jkgoldjkgold@yahoo.com',
	password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
end

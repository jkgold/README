require 'faker'

50.times do 
	Post.create!(
		title: Faker::Lorem.sentence,
		body:  Faker::Lorem.paragraph
		)
end

post =Post.all

100.times.do
	Comment.create!(
		post: post.sample,
		body: Faker::Lorem.paragraph

		)

end

puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

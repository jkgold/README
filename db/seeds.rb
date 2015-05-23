require 'faker'

50.times do 
	Post.create!(
		title: Faker::Lorem.sentence,
		body:  Faker::Lorem.paragraph
   )
end

post = Post.all

100.times do
	Comment.create!(
		post: post.sample,
		body: Faker::Lorem.paragraph

   )





puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"

end



# in this assignment associations I want to implement the following code I want to add two different
# scopes to the post class one ordered_by_title will order the posts in an alphabetical order a to z
# I also want to creat another scope ordered_by_reverse_created_at which would list the posts from
# oldest to newest.  How would i do this 



 	

class Post < ActiveRecord::Base
		attr_accessor(:ordered_by_title, :ordered_by_reverse_created_at, :has_many, :belongs_to, :has_one)
	
  		has_many :comments
  		belongs_to :user
  		belongs_to :topic
  		has_one :summary
 
  		default_scope { order("created_at DESC")}
  		scope :ordered_by_title, -> { where(title: true) }
  		scope :ordered_by_reverse_created_at, -> { order("reverse_created_at")}
end


# a.sort_by { |f| f.class == Array ? f.first : f }
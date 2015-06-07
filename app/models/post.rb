class Post < ActiveRecord::Base
	has_many :comments 
	belongs_to :user


	default_scope { order('created_at DESC')}	
	scope :ordered_by_title => Post.sort_by { |p| p.class == Array? p.first :p}
	scope :ordered_by_reversere_created_at => Post.sort! |first, last| last <=> first end
 		end
 	

	


# a.sort_by { |f| f.class == Array ? f.first : f }
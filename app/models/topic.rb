class Topic < ActiveRecord::Base
	attr_accessor :name
	has_many :posts

validates :name, length: {minimum: 5}, presence: true
end

class PostPolicy < ApplicationPolicy
	def index?
		true
	end

	class Scope 
		attr_reader :user, :scope

		def initialize(user, scope)
			@user = user
			@scope = scope
	  	end

		def resolve 
			if user.admin? || user.moderater?
				scope.all
			elsif user.member?
				scope.where(:published=>true) 
			else user.guest?
				scope.none
			end
		end
	end
end

 
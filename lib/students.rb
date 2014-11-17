class Student

	def initialize
		@badges = []
	end

	def award(badge)
		@badges << badge
	end

	def method_missing(name, *args)
		return @badges.include? $1.to_sym if name.to_s.match(/^has_(.+?)\?/)
		super
	end
end



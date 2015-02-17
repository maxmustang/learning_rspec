class Book
	attr_accessor :title, :author, :category

	def initialize title, author, cateogy
		@title = title
		@author = author
		@category = cateogy
	end
end
require 'spec_helper'


describe Book do

	before :each do #run-before each test
		@book = Book.new "title" , "author", "category"
	end 

	describe "#new" do
		it "returns a new book objec" do
			expect(@book).to be_an_instance_of Book
		end

		it "Throw an ArgumentError if number of parameters are wrong" do
			expect{Book.new "title" , "Author"}.to raise_exception ArgumentError
		end

	end

	describe "#title" do
		it "Return the correct title" do
			expect(@book.title).to eq "title"
		end
	end

	describe "#author" do
		it "Return the correct author" do
			expect(@book.author).to eq "author"
		end
	end

	describe "#category" do
		it "Return the correct category" do
			expect(@book.category).to eq "category"
		end
	end
end

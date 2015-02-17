require 'spec_helper'

describe "Library Object" do 
	before :all do
		lib_arr = [
			Book.new('JS', 'Doni', :development),
			Book.new('Vraptor', 'Lucas', :development),
			Book.new('Funds', 'Fabio', :assets),
			Book.new('Sadness', 'Lukanlo', :mental_stuff)
		]

		File.open 'book.yml', 'w' do |f|
			f.write YAML::dump lib_arr
		end
	end

	before :each do 
		@lib =  Library.new "book.yml"
	end

	describe "#new" do
		context "with no parameters " do
			it "has no books" do
				lib = Library.new
				expect(lib.books.length).to eq 0
			end
		end

		context "with the book.yml parameter" do
			it "has 4 books" do
				expect(@lib.books.length).to eq 4
			end
		end
	end

	it "returns all the books given an category" do
		expect(@lib.get_books_in_category(:development).length).to eq 2
	end

	it "Accepts new books" do
		@lib.add_book(Book.new('Happynss', "Heitor", :mental_stuff))

		expect(@lib.get_book('Sadness')).to be_an_instance_of Book
	end

	it "saves Library" do
		books = @lib.books.map{ |book| book.title } 
		@lib.save "our_new_library.yml"
		lib2 = Library.new "our_new_library.yml"

		books2 = lib2.books.map{ |book| book.title } 
		expect(books).to eq books2
	end
end
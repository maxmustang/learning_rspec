# learning_rspec

rodar os testes com 
	rspec path_to_test --format documentation --color

a gem esta um pouco diferente
	https://github.com/rspec/rspec



describe "texto" ou o Domain do
	before :each do
		#antes de cada teste.. faz alguma coisa
	end

	before :all do
		#assim que o spec é inicializado.. faz alguma coisa
	end

	describe "funcionalidade ou #metodo" do

		it "descreve o que faz"
			#expect( alguma coisa aqui).to algum outro metodo com argumento
			expect(@book).to be_an_instance_of Book
		end

	end
end

spec_helper -> funciona como um import do java

Domain.select retorna um array como .collect do groovy

Collections Matchers
	https://github.com/rspec/rspec-collection_matchers

Expectations
	https://github.com/rspec/rspec-expectations
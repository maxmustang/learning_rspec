# learning_rspec

rodar os testes com 
	rspec path_to_test --format documentation --color

a gem esta um pouco diferente
	https://github.com/rspec/rspec



describe "texto" ou o Domain do
	before :each do
		#antes de cada teste.. faz alguma coisa
	end

	describe "funcionalidade ou #metodo" do

		it "descreve o que faz"
			#expect( alguma coisa aqui).to algum outro metodo com argumento
			expect(@book).to be_an_instance_of Book
		end

	end
end


spec_helper -> funciona como um import do java
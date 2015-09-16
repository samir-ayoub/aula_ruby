#modulo para constantes

module Carro
	PNEUS = 20
end

#NameSpace cria um nome para organizacao das classes#

module NameSpace
	class MinhaClasse 
		def nome
			@nome
		end

		def nome=(nome)
			@nome
		end

		def status
			@status
		end

		def status=(status)
			@status
		end
	end
end

puts Carro::PNEUS
puts NameSpace::MinhaClasse.new

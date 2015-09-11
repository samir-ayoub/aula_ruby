class Produto
	def initialize codigo=0, nome="", quantidade=0
		@codigo=codigo
		@nome=nome
		@quantidade=quantidade
	end

	def codigo
		@codigo
	end

	def codigo=(codigo)
		@codigo=codigo
	end

	def nome
		@nome
	end

	def nome=(nome)
		@nome=nome
	end

	def quantidade
		@quantidade
	end

	def quantidade=(quantidade)
		@quantidade=quantidade
	end		

	def salvar
		Produto.banco_estatico << self
	end

	def atualizar
		Produto.banco_estatico.each_with_index do |produto,i|
			if produto.codigo == self.codigo
				Produto.banco_estatico[i]=produto
			end
		end
	end

	def self.banco_estatico
		@banco_estatico ||= []
	end

	def self.busca_por_codigo (codigo)
		Produto.banco_estatico.find do |produto|
			codigo==produto.codigo
		end
	end
end
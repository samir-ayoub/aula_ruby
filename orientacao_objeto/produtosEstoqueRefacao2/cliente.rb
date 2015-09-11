class Cliente
	def initialize nome="", produto=""
		@nome=nome
		@produto=produto
	end

	def nome
		@nome
	end

	def nome=(nome)
		@nome=nome
	end

	def produto
		@produto
	end

	def produto=(produto)
		@produto=produto
	end

	def salvar
		Cliente.banco_estatico << self
	end


	def self.banco_estatico
		if @banco_estatico.nil?
			@banco_estatico=[]
		end
		@banco_estatico
	end
end
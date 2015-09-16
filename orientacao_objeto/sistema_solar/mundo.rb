class Mundo
	def initialize(nome="",sistema_solar="")
		@nome=nome
		@sistema_solar=sistema_solar
	end

	def nome
		@nome
	end

	def nome=(nome)
		@nome=nome
	end

	def sistema_solar
		@sistema_solar
	end

	def sistema_solar=(sistema_solar)
		@sistema_solar=sistema_solar
	end

	def girar
		puts "Girar"
	end

	def criar
		puts "Criar"
	end

	private
	def log_status
		puts "log_status"
	end	

	protected
	def sol
		puts "Sol"
	end

end


class Pessoa
	def initialize(nome="",cpf="",sobrenome="")
		@criada_no_initializer="qualquer_coisa"
		@nome=nome
		@cpf=cpf
		@sobrenome=sobrenome
	end
	# atributos privados
	@nome=""
	@cpf=""
	@sobrenome=""

	# metodos publica

	def mostrar_variaveis_mostradas_no_initialize
		puts @criada_no_initializer
	end
		
	def nome
		@nome
	end

	def nome=(nome)
		@nome=nome
	end

	def cpf
		@cpf
	end

	def cpf=(cpf)
		@cpf=cpf
	end

	def sobrenome
		@sobrenome
	end

	def sobrenome=(sobrenome)
		@sobrenome=sobrenome
	end

	def self.metodo_estatico
		puts "metodo_de_classe"
	end

	private
	def metodo_privado
		puts "metodo_privado"
	end

	public
	def criando_outro_metodo_publico
		puts "criando_outro_metodo_publico"
	end

	protected

	def metodo_protegido
		puts "metodo_protegido"
	end
end

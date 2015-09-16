nome="danilo"
def nome.andar
	puts "o #{self} esta andando"
end

puts nome
puts nome.andar

animal = "cat"

class << animal
	def speak
		puts "miau"
	end

	def read
		puts "gato lendo"
	end

end

animal.speak
animal.read

class String
	def conteudo_string_com_meu_nome
		"#{self} o meu nome tb e samir"
	end
end

puts "leandro".conteudo_string_com_meu_nome

meu_nome="joice"
puts meu_nome.conteudo_string_com_meu_nome
animal.conteudo_string_com_meu_nome


class Pessoa
	def initialize nome="",telefone=0
		@nome=nome
		@telefone=telefone
	end

	def nome
		@nome
	end

	def nome=(nome)
		@nome
	end

	def telefone
		@telefone
	end

	def telefone=(telefone)
		@telefone
	end
end

class Pessoa
	def celular
		@celular
	end

	def celular=(celular)
		@celular=celular
	end	
end

pessoa=Pessoa.new
pessoa.celular="celular"
puts pessoa.celular

jose=Pessoa.new
def jose.do_egito
	puts "Jose do Egito"
end
puts jose.do_egito







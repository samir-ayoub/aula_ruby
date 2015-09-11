require "byebug"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/marca_com_heranca/marca.rb"

class Camiseta < Marca

	def marca
		nome_original
	end

	def nome
		"camiseta xxx"
	end

end



byebug
x=0
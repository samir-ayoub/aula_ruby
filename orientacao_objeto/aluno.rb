require "/Users/samir/projetos/aula_ruby/orientacao_objeto/pessoa.rb"

class Aluno < Pessoa
	def matricula
		@matricula
	end

	def matricula=(matricula)
		@matricula=matricula
	end


	def criando_outro_metodo_publico
		puts "fazendo polimorfismo no metodo da classe pai"
		puts "conteudo da classe pai:"
		puts super
	end
	def utilizando_metodo_ja_criado
		puts "o conteudo do metodo ja criado vai listar abaixo"
		self.criando_outro_metodo_publico
	end

	def expondo_metodo_protegido
		metodo_protegido
	end

	def expondo_metodo_privado
		metodo_privado
	end
end
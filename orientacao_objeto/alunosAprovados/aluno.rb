require "byebug"


class Aluno
	def initialize(aluno="",nota1=0,nota2=0)
		@aluno=aluno
		@nota1=nota1
		@nota2=nota2
	end

	def aluno
		@aluno
	end

	def aluno=(aluno)
		@aluno=aluno
	end

	def nota1
		@nota1
	end

	def nota1=(nota1)
		@nota1=nota1
	end

	def nota2
		@nota2
	end

	def nota2=(nota2)
		@nota2=nota2
	end

	def salvar
		Aluno.banco_estatico << self
	end

	def media
		(self.nota1+self.nota2)/2
	end

	def situacao
		if(self.media < 5)
			return "Reprovado"
		elsif(self.media >=5 && self.media<7)
			return	"Exame"
		end
		"Aprovado"
	end

	# metodos de classe
	def self.banco_estatico
		@banco_estatico ||= []
	end

	def self.media_classe
		soma=0
		Aluno.banco_estatico.each do |aluno|
			soma+=aluno.media
		end
		media=soma/Aluno.banco_estatico.size
	end

	def self.aprovados
		total=0
		Aluno.banco_estatico.each do |aluno|
			if aluno.situacao == "Aprovado"
				total+=1
			end
		end
		# retornando total aprovados
		total
	end

	def self.exame
		total=0
		Aluno.banco_estatico.each do |aluno|
			if aluno.situacao == "Exame"
				total+=1
			end
		end
		# retornando total exame
		total
	end

	def self.reprovado
		total=0
		Aluno.banco_estatico.each do |aluno|
			if aluno.situacao == "Reprovado"
				total+=1
			end
		end
		# retornando total reprovados
		total
	end
end

Aluno.new("Samir",8,8).salvar
Aluno.new("Rogerio",3,8).salvar
Aluno.new("Didox",7,9).salvar

Aluno.banco_estatico.each do |aluno|
	puts "Aluno: #{aluno.aluno}"
	puts "Nota 1: #{aluno.nota1}"
	puts "Nota 2: #{aluno.nota2}"
	puts "Media: #{aluno.media}"
	puts "Situacao: #{aluno.situacao}"
	puts "---------------"
end


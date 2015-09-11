require "byebug"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoqueRefacao2/cliente.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoqueRefacao2/produto.rb"

def carga_de_produtos
	20.times do |i|
		produto= Produto.new
		produto.codigo=i
		produto.nome="Nome#{i}"
		produto.quantidade=10
		produto.salvar
	end
end
carga_de_produtos

def checa_codigo
	while 1==1
		puts "Digite o codigo do produto"
		codigo=gets.to_i
		produto=Produto.busca_por_codigo(codigo)
		if produto.nil?
			puts "burro, digita de novo outro codigo"
		else
			return produto
		end
	end
end







while 1==1
	puts "Bem vindo nanana 1 para comprar 0 para sair"
	codigo=gets.to_i
	if codigo == 0
		break
	else
		cliente=Cliente.new
		puts "Digite o nome do caba"
		cliente.nome=gets
		produto=checa_codigo
	end
end




byebug
x=0
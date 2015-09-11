require "byebug"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoqueRefacao/cliente.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoqueRefacao/produto.rb"

def carga_de_produtos
	20.times do |i|
		produto=Produto.new
		produto.codigo=i
		produto.nome="nome"+i.to_s
		produto.quantidade=10
		produto.salvar
	end
end
carga_de_produtos

def capturando_codigo
	while 1==1
		puts "Digite o codigo do produto"
		codigo=gets.to_i
		produto=Produto.busca_por_codigo(codigo)
		if produto.nil?
			puts "Codigo Inexistente, digite novamente"
		else 
			return produto
		end
	end	
end

while 1==1
	puts "Bem vindo a refacao, digite 1 para comprar ou 0 para sair"
	digito=gets.to_i
	if digito == 0; break
	else
		cliente=Cliente.new
		puts "Digite o nome do cliente"
		cliente.nome=gets
		produto=capturando_codigo
		while 1==1
			puts "Digite a quantidade"
			quantidade=gets.to_i
			if produto.quantidade == 0
				puts "Nao temos mais este produto em estoque"
				produto=capturando_codigo
			elsif quantidade > produto.quantidade
				puts "Quantidade indisponivel, tente novamente"
				produto=capturando_codigo
			else
				break
			end
		end
	end

	produto_cliente=Produto.new
	produto_cliente.codigo=produto.codigo
	produto_cliente.quantidade=quantidade
	produto_cliente.nome=produto.nome
	cliente.produto=produto_cliente
	cliente.salvar
	produto.quantidade-=quantidade
	produto.atualizar

end

Produto.banco_estatico.each_with_index do |produto,i|
	puts "CODIGO: #{produto.codigo}, NOME: #{produto.nome}, QUANTIDADE: #{produto.quantidade}"

end

Cliente.banco_estatico.each_with_index do |cliente,i|
	puts "NOME: #{cliente.nome}, PRODUTO: #{cliente.produto.nome}, QUANTIDADE:#{cliente.produto.quantidade}"
end






byebug
x=0
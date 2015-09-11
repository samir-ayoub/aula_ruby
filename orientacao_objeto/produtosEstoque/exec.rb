require "byebug"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoque/cliente.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/produtosEstoque/produto.rb"

def carga_de_produtos
	20.times do |i|
		produto=Produto.new
		produto.codigo=i
		produto.nome="nome"+i.to_s
		# produto.nome="nome#{i}" outra maneira de somar string e int
		produto.quantidade=10
		produto.salvar
	end
end
carga_de_produtos

def capturando_produto_cliente
	while 1==1 do
		puts "Digite o código do produto"
		codigo=gets.to_i
		produto=Produto.busca_por_codigo(codigo)
		if produto.nil?
			puts "Codigo Inexistente"
		else
			return produto
		end
	end
end



while 1==1 do
	puts "Bem-vindo ao programa de vendas \n Digite 1 para cadastrar seu pedido\n0 para sair"
	a=gets.to_i
	if a==0; break
	else
		cliente=Cliente.new
		puts "Digite o nome"
		cliente.nome=gets
		produto=capturando_produto_cliente
		while 1==1 do
			puts "Digite a quantidade"
			quantidade=gets.to_i
			if produto.quantidade < 1
				puts "Não temos mais estoque desse produto"
				capturando_produto_cliente
			elsif quantidade > produto.quantidade
				puts "Quantidade indisponível"
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

puts "----------------------"


Produto.banco_estatico.each_with_index do |produto,i|
	puts "CODIGO: #{produto.codigo}, NOME: #{produto.nome}, QUANTIDADE: #{produto.quantidade}"

end

Cliente.banco_estatico.each_with_index do |cliente,i|
	puts "NOME: #{cliente.nome}, PRODUTO: #{cliente.produto.nome}, QUANTIDADE:#{cliente.produto.quantidade}"
end


byebug
x=0






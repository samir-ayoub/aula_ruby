vendedores=[]
totalVendas=[]
minimoVendas=0
maximoVendas=999999
vendedorCampeao=""
vendedorLixo=""

while 1==1 do
	puts ("Este é o programa para mostrar a campeao de vendas. \n Para continuar, digite 1, para sair digite 0.")
	a=gets.to_i
	if a==0; break
	else
		puts "Digite o nome do vendedor"
		vendedor=gets
		puts "Digite o total de vendas do vendedor #{vendedor}"
		vendas=gets.to_f
		totalComissao=((vendas*5)/100)+vendas
		vendedores << vendedor
		totalVendas << totalComissao

		if maximoVendas >= totalComissao
			maximoVendas=totalComissao
			vendedorCampeao=vendedor
		end

		if minimoVendas <=totalComissao
			minimoVendas=totalComissao
			vendedorLixo=vendedor
		end
	end
end

vendedores.each_with_index do |value,i|
	puts "Vendedor: #{value}, total a receber: #{totalVendas[i]}"
end

puts "O vendedor de bosta foi #{vendedorCampeao}"
puts "O vendedor foda foi #{vendedorLixo}"


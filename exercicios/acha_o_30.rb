numeros=[30,2,3,5,6,30,12,80,30,4,12,30,30,1,1]
posicao=[]
trinta_vezes=0
numeros.each_with_index do |item,i|
	if item==30
		trinta_vezes+=1
		posicao << i
	end
end
puts trinta_vezes
puts posicao.inspect





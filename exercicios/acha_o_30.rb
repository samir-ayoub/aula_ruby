numeros=[30,2,3,5,6,30,12,80,30,4,12,30,30,1,1]
posicao=[]
trinta_vezes=0
numeros.each do |i|
	if i==30
		trinta_vezes+=1
		posicao << i
	end
end
puts trinta_vezes

numeros.index 30


nao da certo......


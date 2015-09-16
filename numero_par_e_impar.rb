require "byebug"

vetores=[]
numeros_pares=[]
numeros_impares=[]
total_par=0
total_impar=0
	

puts "Digite 6 valores"
(1..6).each do |i|
	puts "Digite o valor #{i}"
	valor =gets.to_i
	resto_divisao=valor%2
	if resto_divisao == 0
		numeros_pares << valor
		total_par+=1
	else 
		numeros_impares << valor
		total_impar+=1
	end

	vetores << valor
end


puts "Numeros impares digitados:"
numeros_impares.each do |i|
	puts i
end

puts "Total impares: #{total_impar}"

puts "Numeros pares digitados:"
numeros_pares.each do |i|
	puts i
end

puts "Total Pares: #{total_par}"


------------------------------------





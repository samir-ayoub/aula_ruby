nomes=[]
notas=[]


(1..2).each do |i|
	puts "Digite o nome do #{i}º aluno"
	nome=gets
	puts "Digite a nota do aluno #{nome}"
	nota=gets.to_i
	nomes << nome
	notas << nota
end

nomes.each_with_index do |value,i|
	puts "Aluno: #{value}, nota: #{notas[i]}"
end
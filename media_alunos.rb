nomes=[]
medias=[]

while 1==1 do
	puts ("Este é o programa para mostrar a media dos alunos. \n Para continuar, digite 1, para sair digite 0.")
	a=gets.to_i
	if a==0; break
	else
		puts "Digite o nome do aluno"
		nome=gets
		puts "Digite a nota 1 do aluno #{nome}"
		nota1=gets.to_i
		puts "Digite a nota 2 do aluno #{nome}"
		nota2=gets.to_i
		media=(nota1+nota2)/2
		nomes << nome
		medias << media
	end
end

nomes.each_with_index do |value,i|
	puts "Aluno: #{value}, media: #{medias[i]}"

end

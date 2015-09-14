require "byebug"

logica=[3,6,12,23,56,43,17,13,14,15,28,21,16,11,24]
linguagem=[12,56,17,14,54,200,180,9,23,24]

def teste
	a=logica.select { |i| i == linguagem[i] }
	puts a
end

# ['Cat', 'Dog', 'Bird'].include? 'Dog'


# logica.each do |i, linguagem|
# 	logica[i].include? linguagem[i]
# 	return i
# end


def puxa_vetor logica, linguagem
	logica.each do |i|
		a= select {|i| i == linguagem[i]}
		puts a
	end
end

byebug
x=0

# logica.select {|i| i == linguagem[i]}



# def selecionar_itens_q_precisa
# 	a=(0..7).select {|i| i % 2 !=0}
# 	puts a
# end

# def seleciona_numeros_mais_q_20
# 	puts [3,4,2,9,20,100,2].select{|i| i > 10}
# end
def exemplo_upcase
	a="samir".upcase
	puts a
end

def exemplo_concat(b)
	a="samir"
	a.concat("#{b}")
	puts a
end

def juntar_string
	a="samir"
	a << "ayoooub"
	puts a
end

def substring_de_txt
	a="samir ayoub"
	a[2,3]
	puts a
end

def replace
	a="damir".gsub("d","S")
	puts a
end

def gsub2
	a="damir".gsub(/[a-b]/,"d")
	puts a
end

def capitaliza
	a="damir".capitalize
	puts a
end

def delete
	a="damir".delete "d"
	puts a
end

def downcase
	a="dAmir".downcase
	puts a
end

def upcase2
	a="damir".upcase
	puts a
end

def checa_vazio
	a="".empty?
	puts a
end

def replace
	a="damir"
	a.replace "Lamir"
	puts a
end

def insert_into_string
	a="abcd".insert(1,"xxx")
	puts a
end

def divide_string_transforma_em_arrays
	a="Samir.Ayoub".split(".")
	puts a
end

def duas_formas_de_loop
	100.times{|i| puts(i)}
	100.times do |i|
		puts(i)
	end
end

def exemplo_divisao
	a=20 
	b=3
	c=a.div(3)
	puts c
end


def hash
	cliente={nome:"samir",telefone:"3434343434"}
	cliente[:nome]
end


def varrendo_hash
	cliente={nome:"samir",telefone:"3434343434"}
	cliente.each do |key,value|
		puts key
		puts value
	end
end

def exemplo_if
	a=21
	if(a==21)
		puts "entrou dentro do if"
	elsif (a==22)
		puts "entrou no if com 22"
	else
		puts "nao entrou no if"
	end
end

def exemplo_array
	array=[]
	[1,2,3,6,9,10].each do |i|
		puts i
		array.push(i+10)
	end

	array.each  do |i|
		puts i
	end
end

def pop_tira_ultimo_elemento_do_array
	array=[2,3,5,8]
	pop=array.pop
	puts array.inspect
	puts pop
end

def adicionando_valores_no_array
	array=[]
	[1,2,3,6,9,10].each do |i|
		puts i
		array << i+10
	end

	array.each  do |i|
		puts i
	end
end

def usando_prompt
	teste=gets #prompt
	puts teste
	#$stdin.readline.to_i   tem essa forma tb
end

def selecionar_itens_q_precisa
	a=(0..7).select {|i| i % 2 !=0}
	puts a
end

def seleciona_numeros_mais_q_20
	puts [3,4,2,9,20,100,2].select{|i| i > 10}
end


def funcao_com_parametro(parametro1,parametro2)
	puts parametro1
	puts parametro2
end

def funcao_nao_obriga_parametro(parametro1=nil,parametro2=nil)
	puts parametro1
	puts parametro2
end	

def funcao_nao_obriga_parametro_array(*parametro)
	puts parametro.inspect
end

funcao_com_parametro("samir","ayoub")

funcao_nao_obriga_parametro "teste", "legal"

funcao_nao_obriga_parametro_array(1,2,5,3)

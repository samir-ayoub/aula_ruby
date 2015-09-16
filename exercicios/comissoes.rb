require "byebug"

class Salesmen
	def initialize name="",sales=0,commission=0	
		@name=name
		@sales=sales
		@commission=commission
	end

	def name
		@name
	end

	def name=(name)
		@name=name
	end

	def sales
		@sales
	end

	def sales=(sales)
		@sales=sales
	end

	def commission
		@commission
	end

	def commission=(commission)
		@commission=commission
	end

	def save
		Salesmen.static << self
	end

	def self.static
		@static ||= []
	end

	def total_sales
		total = (( self.sales * self.commission ) / 100) + self.sales
		return total
	end
end

while 1 == 1 do
	puts "Bem vindo ao programa de vendas, digite 1 para continuar ou 0 para sair"
	digito = gets.to_i
	if digito == 0; break
	else 
		(1..2).each do
			salesmen = Salesmen.new
			puts "Digite o nome do vendedor"
			salesmen.name = gets
			puts "Digite o total vendido"
			salesmen.sales = gets.to_i
			puts "Digite a comissão para este vendedor"
			salesmen.commission=gets.to_i
			salesmen.save
		end
	end
end

Salesmen.static.each_with_index do |salesmen, i|
	puts "Nome vendedor: #{salesmen.name}, Total: #{salesmen.total_sales}"
end

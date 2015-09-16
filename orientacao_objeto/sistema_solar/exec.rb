require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/mundo.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/terra.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/sol.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/venus.rb"
require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/singleton.rb"
require "byebug"

terra=Terra.new
terra.nome="Samir"
puts terra.nome

venus=Venus.new
venus.expondo_sol

puts Sol::CONST_1
puts Sol::CONST_2

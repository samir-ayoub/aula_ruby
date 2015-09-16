require "/Users/samir/projetos/aula_ruby/orientacao_objeto/sistema_solar/venus.rb"


class Singleton
	private_class_method :new
	@@instance = Venus.new
	def self.instance
		@@instance
	end
end
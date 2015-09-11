require "/Users/samir/projetos/aula_ruby/orientacao_objeto/pessoa.rb"


class Singleton
    private_class_method :new
    @@instance = Pessoa.new
    def self.instance
       @@instance
    end
end

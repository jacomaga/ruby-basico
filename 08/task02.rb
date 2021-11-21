module Person
  class Juridic
    def initialize (name, cnpj)
      @cnpj = cnpj
      @name = name
    end

    def add
      puts "Pessoa Jurídica Adicionada"
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end

  class Physical
    def initialize (name, cpf)
      @cpf = cpf
      @name = name
    end

    def add
      puts "Pessoa Física Adicionada"
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end


Person::Juridic.new('M.C.', '4241.123123').add
Person::Physical.new('M.C.', '4241.123123').add

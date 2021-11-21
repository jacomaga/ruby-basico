require "cpf_cnpj"

def validCPF(number)
   CPF.valid?(number)
end
2
puts validCPF()
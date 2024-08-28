require_relative 'conta'

class ContaCorrente < Conta
    
    attr_accessor :limite

    def initialize(numero, titular, saldo, limite)
        super(numero, titular, saldo)
        @limite = limite
    end

    def sacar(valor)
        if (self.saldo + self.limite) >= valor
            self.saldo -= valor
        else
            puts("Saldo indisponível!")
        end
    end
end
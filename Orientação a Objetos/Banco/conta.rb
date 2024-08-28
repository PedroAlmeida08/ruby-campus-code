require_relative 'cliente'

class Conta
    
    attr_reader :numero, :titular
    attr_accessor :saldo

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    def sacar(valor)
        if self.saldo >= valor
            self.saldo -= valor
        else
            puts("Saldo indisponível!")
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(destino, valor)
        self.sacar(valor)
        destino.depositar(valor)
    end

end
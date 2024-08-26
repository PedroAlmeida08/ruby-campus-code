INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

def menu()
    puts("\n[#{INSERIR_RECEITA}] Cadastrar uma receita")
    puts("[#{VISUALIZAR_RECEITAS}] Ver todas as receitas")
    puts("[#{SAIR}] Sair")
    print("\nSua opção: ")
    return gets.to_i() # gets sempre recebe uma string
end

def inserir_receita()
    puts("\nDigite o nome da receita: ")
    nome = gets.chomp()
    puts("\nDigite o tipo da receita: ")
    tipo = gets.chomp()
    puts("\nReceita #{nome} do tipo #{tipo} cadastrada com sucesso!\n")
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
    puts("\n========== Receitas Cadastradas ==========")
    receitas.each do |receita|
        puts("#{receita[:nome]} - #{receita[:tipo]}")
    end
    if(receitas.empty?())
        puts("Nenhuma receita cadastrada!")
    end
end

puts("\nBem-vindo ao Cookbook - sua rede social de receitas")

receitas = []

opt = menu()

while(opt != SAIR) do
    if(opt == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif(opt == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    else 
        puts("\nDigite uma opção válida!")
    end
    opt = menu()
end

puts("\nObrigado por usar o Cookbook! Até mais!")
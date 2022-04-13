#language:pt
@All_testes
Funcionalidade: Efetuar consulta de veiculos

    @marca
    Cenario: Marca dos veiculos
        Dado que quero pesquisar um veiculo
        Quando realizo uma busca
        Então recebo a lista das marcas
        
    @modelo
    Cenario: Modelos de veiculos
        Dado que seleciono uma marca
        Entao vejo a lista de modelos
    
    @versao
    Cenario: Versao do modelo
        Dado  que selecionei o modelo
        Entao vejo a lista de versões e modelos de veículos
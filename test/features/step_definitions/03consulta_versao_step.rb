Dado('que selecionei o modelo') do
    api_tarefas.api_make
    api_tarefas.api_model
   
end

Entao('vejo a lista de versões e modelos de veículos') do
    @response = api_tarefas.api_version
end
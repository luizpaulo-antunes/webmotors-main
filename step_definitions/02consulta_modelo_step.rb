Dado('que seleciono uma marca') do
    api_tarefas.api_make
    @response = api_tarefas.api_model
end

Entao('vejo a lista de modelos') do
    log @response
end
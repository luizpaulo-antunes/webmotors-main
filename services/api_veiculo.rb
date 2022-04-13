module ApiVeiculo
    include HTTParty
    #Url padrão 
    base_uri BASE_URL['base_url']
    # Opções do service
    format :json
    headers 'Content-Type': 'application/json'
  end

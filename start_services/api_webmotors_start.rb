class ApiWebMotors < SitePrism::Page
  def api_make
    @response = ApiVeiculo.get("/Make")
    valida_codigo_retorno(@response)
    @resul = @response[0]["ID"]
    $RETURNS['ID'].clear
    $RETURNS['ID'] << @resul.to_s
    @response
  end
  def api_model
    @response = ApiVeiculo.get("/Model?MakeID=#{$RETURNS['ID']}")
    valida_codigo_retorno(@response)
    @model = @response[0]["ID"]
    $RETURNS['ID'].clear
    $RETURNS['ID'] << @model.to_s
    @response
  end
  def api_version
    @response = ApiVeiculo.get("/Version?ModelID=#{$RETURNS['ID']}")
    valida_codigo_retorno(@response)
    @vers = @response[0]["ID"]
    $RETURNS['ID'].clear
    $RETURNS['ID'] << @vers.to_s
    @response
  end
 
end
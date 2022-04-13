def valida_codigo_retorno(retorno)
    code = retorno.code
    mess_return = retorno.body
    puts code
    puts mess_return
    case code
    when 200
        puts "Sucesso"
    else 500
        raise "ERRO: Problema ao fazer Consulta na API:\nCodigo do erro: #{code}\nDescrissão do erro: #{mess_return}"
    end
end
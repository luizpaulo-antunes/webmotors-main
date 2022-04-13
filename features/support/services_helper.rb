Dir[File.join(File.dirname(__FILE__), '../start_services/*_start.rb')].each { |file| require file }

#Chamar classes instanciadas
module Page
  def api_tarefas
    api_tarefas ||= ApiWebMotors.new 
  end
  #def api_tarefas_vac
  #  api_tarefas_vac ||= ApiMeuEinsteinVacinas.new 
  #end
end

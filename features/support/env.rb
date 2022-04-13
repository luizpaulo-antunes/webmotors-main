require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'faker'
require 'rspec'
require 'site_prism'
require 'report_builder'
require 'json'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'

require_relative 'services_helper.rb' ##Arquivo que inicia todas as minhas classes

World Page

World Capybara::DSL 
World Capybara::RSpecMatchers

AMB = ENV['AMB']
BASE_URL = YAML.load_file(File.dirname(__FILE__) + "/ambientes/ambientes.yml")[AMB]
$LOADS = YAML.load_file(File.dirname(__FILE__) + "/loads/loads.yml")
$RETURNS = YAML.load_file(File.dirname(__FILE__) + "/loads/returns.yml")

ReportBuilder.configure do |config|
  config.input_path = 'results/report.json'
  config.report_path = 'results/report'
  config.report_types = [:html]
  config.report_title = 'Automação Meu_Einstein'
  config.color = "blue"
  #config.additional_info = {login_utilized: $LOADS["user1"]["login"]}
end

at_exit do
  ReportBuilder.build_report
end

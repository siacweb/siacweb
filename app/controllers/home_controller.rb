class HomeController < ApplicationController

  def index
    #TODO: colokr pra mostrar só A home ativa qndo colokr os campos d ativo/inativo
    @homes = Home.all

    #TODO: selecionar soh alguns de forma aleatoria
    @general_informations = GeneralInformation.all
  end

end
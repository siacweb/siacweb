class GeneralInformationController < ApplicationController

  def index
    @general_informations = GeneralInformation.all
  end

end
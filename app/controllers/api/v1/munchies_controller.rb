class Api::V1::MunchiesController < ApplicationController

  def index
    require "pry"; binding.pry
    from = params[:start]
    location = params[:destination]
    category = params[:food]
  end

end

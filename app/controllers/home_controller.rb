class HomeController < ApplicationController
  def index
    @temperature = Temperature.last

  end

end

class HomeController < ApplicationController
  def index
  end

  def about
    @data = Covid.group(:BL).count
  end

  
end

class HomeController < ApplicationController
  def index
    @data = Covid.group(:BL).count(:BL)
    #@data2 = Covid.group_by_day(:created_at).average(:death_rate)
    @data2 = Covid.where("GEN = 'Stuttgart'").group_by_day(:created_at).sum(:cases7_per_100k)
  end

  def about
  end

  
end
